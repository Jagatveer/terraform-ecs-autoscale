resource "aws_autoscaling_group" "ecs-cluster" {
  availability_zones = ["ap-southeast-1a","ap-southeast-1b"]
  vpc_zone_identifier = ["${aws_subnet.ecs-ap-southeast-1b-public.id}","${aws_subnet.ecs-ap-southeast-1a-public.id}"]

  name = "ecs-jagat-test"
  min_size = 2
  max_size = 5
  desired_capacity = 3
  health_check_type = "EC2"
  launch_configuration = "${aws_launch_configuration.ecs.name}"
  health_check_grace_period = 300

  tag {
    key = "Env"
    value = "${var.environment_name}"
    propagate_at_launch = true
  }

  tag {
    key = "Name"
    value =  "ECS ${var.cluster_name}"
    propagate_at_launch = true
  }
}
