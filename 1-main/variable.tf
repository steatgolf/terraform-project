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
  description = "Input the custom instance type"
  type        = string
  default     = ""
}

variable "instance_type_default" {
  description = "Default instance_type"
  type        = string
  default     = "t2.micro"
}

variable "s3_bucket_name" {
  description = "Input the S3 bucket name"
  type        = string
  default     = "steat-sj-terraform-tfstate"
}


# variable "ssh_key" {
#   description = "The owners of the AMI to use for the VM, default is the official Ubuntu 24 AMI"
#   type        = string
#   default     = ""
# }

# locals {
#   environment_name = terraform.workspace
# }
