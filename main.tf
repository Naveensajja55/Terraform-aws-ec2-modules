// AWS ec2 config
provider "aws"{
   access_key ="${var.aws_access_key}"
   secret_key="${var.aws_ secret_key}"
   region ="${var.aws_region}"
}

//EC2Instance Resource for Module
  resource"aws_instance""ec2_instance"{
    ami="${var.ami_id}"
    count- "${var.number_of_instance}"
    subnet_id="${var.subnet_id}"
    instance_type="${var.instance_type}"
    monitoring= "true"
    user_data= "${file(var.user_data)}"
    monitoring="true"
    user_data="${file(var.user_data)}"
    tags{
      
      Name="${var.instance_name}-${count.index}"
      env="test"
    }
  }
