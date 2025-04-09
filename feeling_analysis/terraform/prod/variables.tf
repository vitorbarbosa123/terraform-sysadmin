variable "env" {
  description = "Environment"
  type        = string
}

variable "internal_port" {
  type    = number
  default = 5000
}

variable "external_port" {
  type = number
}

variable "environment" {
  type    = map(string)
  default = {}
}
