resource "aws_elb" "jagat-test" {
    name                        = "jagat-test"
    subnets                     = ["${aws_subnet.ecs-ap-southeast-1b-public.id}", "${aws_subnet.ecs-ap-southeast-1a-public.id}"]
    security_groups             = ["${aws_security_group.ElbSecurityGroup.id}"]
    cross_zone_load_balancing   = true
    idle_timeout                = 60
    connection_draining         = false
    connection_draining_timeout = 300

    listener {
        instance_port      = 80
        instance_protocol  = "http"
        lb_port            = 80
        lb_protocol        = "http"
        ssl_certificate_id = ""
    }

    health_check {
        healthy_threshold   = 2
        unhealthy_threshold = 10
        interval            = 30
        target              = "http:80/"
        timeout             = 5
    }

}
