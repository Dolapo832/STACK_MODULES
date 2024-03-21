variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}


variable "Environment" {
  default = "dev"
}

variable "default_vpc_id" {
  default = "vpc-0b16376d2cbed43aa"
}

variable "system" {
  default = "Retail Reporting"
}

variable "subsystem" {
  default = "CliXX"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "subnets_cidrs" {
  type = list(string)
  default = [
    "172.31.32.0/20"
  ]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "my_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "my_key.pub"
}

variable "OwnerEmail" {
  default = "dolapo832@gmail.com"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-stack-1.0"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "subnet" {
  default = "subnet-0ffd90203c1d3e9fc"
}

variable "subnet_ids" {
  type = list(string)
  default = [ 
       "subnet-02f2c262bfc08697c",
       "subnet-04deb661ac66ba4e6",
       "subnet-0603ede3c2a289ac8",
       "subnet-0654326ffc23e2e55",
       "subnet-0918a43a58a8a01be",
       "subnet-0b1720eacf1056482" 
    ]
}

variable "stack_controls" {
  type = map(string)
  default = {
    ec2_create = "Y"
    rds_create = "Y"
  }
}

variable "EC2_Components" {
  type = map(string)
  default = {
    volume_type           = "gp2"
    volume_size           = 30
    delete_on_termination = true
    encrypted             = "true"
    instance_type         = "t2.micro"
  }
}


variable "backup" {
  default="yes"
}
