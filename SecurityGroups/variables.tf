variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22]
}

variable "name" {
  description = "Name of security group"
  default     = "example-sg"
}

variable "vpc_id" {
  description = "VPC to associate with sg"
}

variable "open-internet" {
  description = "CIDR block for open internet"
  default     = ["0.0.0.0/0"]
}

variable "outbound-port" {
  description = "Outbound port"
  default     = 0
}
