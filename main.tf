resource "yandex_vpc_network" "vpc" {
  description = "Create network"
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "vpc_subnets" {
  description = "Create subnet"
  for_each = { for k,v in var.subnets: k => v }

  network_id     = yandex_vpc_network.vpc.id
  name           = each.value.subname
  v4_cidr_blocks = [each.value.cidr]
  route_table_id = each.value.route_table
  zone           = var.zone
  labels = [
    {tag = each.value.labels.tag}
  ]
}