variable "region" {
    type = string
    default = "us-east-1"
}

variable "public_key_path" {
  type        = string
  description = "Path to the public key file"
  default = "~/.ssh/openid.pub"
}

variable "openID_ec2_inst_type" {
    description = "declaring ec2 instance type for OPENID demo"
    type = string
    default = "t3.micro"
}