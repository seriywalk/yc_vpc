#--------------------------------
##### variables for module #####
#--------------------------------

variable "vpc_name" {
  description = "Virtual Private Cloud name"
  type    = string
  default = "vpc"
}

# variable "zone" {
#   description = "Zone name"
#   type    = string
#   default = "ru-central1-a"
# }

variable "subnets" {
  description = "Create subnets"
  type = list(object(
    { 
      zone        = string
      subname     = string
      cidr        = string
      #route_table = optional(string)
    })
  )
  default = [ {zone = "ru-central1-a", subname = "private", cidr = "192.168.10.0/24"}, ]
}

