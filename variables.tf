variable"instance_name"{
  description = "Used to populate the name tag"
}
variable "instance_type"{}
variable "subnet_id"{
  description="ami ID"
}
variable "number_of_instances"{
  description="instance count which you need"
  default=2
}
variable "tags"{
  default={
    created_by="terraform"
  }
}
variable "aws_access_key"{}
variable "aws_secret_key"{} 
variable "aws_region_key"{}
