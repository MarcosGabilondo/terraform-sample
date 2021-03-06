# Create the frontend subnet
resource "aws_subnet" "frontend" {
  provider                = "aws.${var.alias}"
  vpc_id                  = "${aws_vpc.default.id}"
  cidr_block              = "${var.net_prefix}.${var.subnet_prefixes["frontend"]}.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "backend" {
  provider                = "aws.${var.alias}"
  vpc_id                  = "${aws_vpc.default.id}"
  cidr_block              = "${var.net_prefix}.${var.subnet_prefixes["backend"]}.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "dmz" {
  provider                = "aws.${var.alias}"
  vpc_id                  = "${aws_vpc.default.id}"
  cidr_block              = "${var.net_prefix}.${var.subnet_prefixes["dmz"]}.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "database" {
  provider                = "aws.${var.alias}"
  vpc_id                  = "${aws_vpc.default.id}"
  cidr_block              = "${var.net_prefix}.${var.subnet_prefixes["database"]}.0/24"
  map_public_ip_on_launch = true
}
