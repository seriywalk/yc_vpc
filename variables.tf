#--------------------------------
##### variables for module #####
#--------------------------------

variable "vpc_name" {
  description = "Virtual Private Cloud name"
  type    = string
  default = "vpc"
}

variable "zone" {
  description = "Zone name"
  type    = string
  default = "ru-central1-a"
}

variable "subnets" {
  description = "Create subnets"
  type = list(object(
    {
      subname     = string
      cidr        = string
      route_table = optional(string)
      labels      = optional(list(object(
        {
          tag = string
        }
      )))
    })
  )
  default = []
}

/* this is for the map
variable "subnets" {
  type = map(object({
    zone = string
    cidr = string
  }))
}
*/
