resource "aws_route_table" "ECS" {
    vpc_id     = "${aws_vpc.ecs.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.ecs.id}"
    }

    tags {
        Name = "ECS"
    }
}
