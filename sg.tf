resource "aws_security_group" "ElbSecurityGroup" {
    name        = "ElbSecurityGroup"
    description = "ELB Allowed Ports"
    vpc_id      = "${aws_vpc.ecs.id}"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        Name = "ElbSecurityGroup"
    }
}

resource "aws_security_group" "EC2ContainerService" {
    name        = "EC2ContainerService"
    description = "ECS Allowed Ports"
    vpc_id      = "${aws_vpc.ecs.id}"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        Name = "EcsSecurityGroup"
    }
}
