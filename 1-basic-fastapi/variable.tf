variable "ami_name" {
  description = "The name of the AMI to use for the VM, default is the latest Ubuntu 24 AMI"
  type        = string
  default     = "ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-*"
}

variable "ami_owner" {
  description = "The owners of the AMI to use for the VM, default is the official Ubuntu 24 AMI"
  type        = string
  default     = "099720109477"
}

variable "custom_ami" {
  description = "The custom AMI to use for the VM, if not provided the latest Ubuntu 24 11 AMI will be used"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The owners of the AMI to use for the VM, default is the official Ubuntu 24 AMI"
  type        = string
  default     = ""
}

variable "instance_type_default" {
  description = "The owners of the AMI to use for the VM, default is the official Ubuntu 24 AMI"
  type        = string
  default     = "t2.micro"
}