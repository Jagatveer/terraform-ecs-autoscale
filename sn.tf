resource "aws_subnet" "ecs-ap-southeast-1b-public" {
    vpc_id              = "${aws_vpc.ecs.id}"
    cidr_block          = "10.201.14.0/25"
    availability_zone   = "ap-southeast-1b"
    map_public_ip_on_launch = true
    tags {
        Name = "ecs-ap-southeast-1b-public"
    }
}

resource "aws_subnet" "ecs-ap-southeast-1a-public" {
    vpc_id                  = "${aws_vpc.ecs.id}"
    cidr_block              = "10.201.15.0/25"
    availability_zone       = "ap-southeast-1a"
    map_public_ip_on_launch = true

    tags {
        "Name" = "ecs-ap-southeast-1a-public"
    }
}
