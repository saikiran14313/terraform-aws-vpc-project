variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}


variable "cidr" {
  description = "VPC_IP_Range"
  type        = string
  default     = "10.0.0.0/16"
}

