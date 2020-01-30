variable "vpc_security_group_ids" {
  type        = list(string)
  description = "List of security groups"
}

variable "ubuntu-ami" {
  description = "ami for ubuntu"
  default     = "ami-0be057a22c63962cb"
}

variable "instance-type" {
  description = "type of EC2 instance"
  default     = "t2.micro"
}

variable "pem-key" {
  description = "key name to ssh in"
  default     = "Example2"
}

variable "subnet_id" {
  description = "subnet to house EC2 instance"
}

variable "tags" {
  type        = map(string)
  description = "tags for instance"
}

variable "associate_public_ip_address" {
  description = "this one's obvious"
  default     = "true"
}
