resource "aws_network_acl" "ecs-nacl" {
    vpc_id     = "${aws_vpc.ecs.id}"
    subnet_ids = ["${aws_subnet.ecs-ap-southeast-1b-public.id}", "${aws_subnet.ecs-ap-southeast-1a-public.id}"]

    ingress {
        from_port  = 0
        to_port    = 0
        rule_no    = 100
        action     = "allow"
        protocol   = "-1"
        cidr_block = "0.0.0.0/0"
    }

    egress {
        from_port  = 0
        to_port    = 0
        rule_no    = 100
        action     = "allow"
        protocol   = "-1"
        cidr_block = "0.0.0.0/0"
    }

    tags {
        Name      = "ecs-nacl"
    }
}
