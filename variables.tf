variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "region" {
  description = "The AWS region to create resources in."
  default = "ap-southeast-1"
}

variable "environment_name" {
    default = "ECS Instance"
    description = "Environment name to tag EC2 resources with (tag=environment)"
}

variable "ecs_cluster_name" {
  description = "The name of the Amazon ECS cluster."
  default = "default"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "The aws ssh key name."
  default = "p_singapore"
}
