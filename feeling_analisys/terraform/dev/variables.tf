variable "env" {
  description = "Ambiente: dev, qa, prod"
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
