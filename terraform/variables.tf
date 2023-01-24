variable "location" {
  default = "uksouth"
}

variable "environment" {
  default = "dev"
}

variable "tags" {
  default = {}
}

variable "service_principals" {
  type = list(object({
    name = string

    role_assignments = optional(list(object({
      scope                = string
      role_definition_name = string
    })), [])
  }))
}
