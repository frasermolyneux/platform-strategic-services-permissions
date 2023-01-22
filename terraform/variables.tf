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

    acrpull_assignments     = optional(list(string), [])
    owner_assignments       = optional(list(string), [])
    contributor_assignments = optional(list(string), [])
  }))
}
