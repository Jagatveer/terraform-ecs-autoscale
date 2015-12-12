variable "cluster_name" {
    default = "sample-app-cluster"
    description = "The name of the ECS Cluster"
}

resource "aws_launch_configuration" "ecs" {
    name = "ecs-jagat-test"
    image_id = "ami-c9b572aa"
    instance_type = "t2.micro"
/* ecsInstanceRole IAM role should alerady exist. If name is different, change it here */
    iam_instance_profile = "ecsInstanceRole"
    key_name = "p_singapore"
    security_groups = ["${aws_security_group.EC2ContainerService.id}"]
    user_data = "#!/bin/bash\necho ECS_CLUSTER=${var.cluster_name} > /etc/ecs/ecs.config"
}
