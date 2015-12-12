resource "aws_internet_gateway" "ecs" {
    vpc_id = "${aws_vpc.ecs.id}"

    tags {
        Name = "ecs"
    }
}
