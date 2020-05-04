//Creates RT
resource "aws_route_table" "rt_public" { 
  vpc_id = "${aws_vpc.main.id}" 
  tags = "${var.tags}"
  route { 
    cidr_block = "0.0.0.0/0" 
    gateway_id = "${aws_internet_gateway.main.id}" 
    } 
} 


//RT ASSOCIATION with public subnets
resource "aws_route_table_association" "rt_public1" { 
  subnet_id = "${aws_subnet.rt_public1.id}" 
  route_table_id = "${aws_route_table.rt_public.id}" 
} 

resource "aws_route_table_association" "rt_public2" { 
  subnet_id = "${aws_subnet.rt_public2.id}" 
  route_table_id = "${aws_route_table.rt_public.id}" 
} 

resource "aws_route_table_association" "rt_public3" { 
  subnet_id = "${aws_subnet.rt_public3.id}" 
  route_table_id = "${aws_route_table.rt_public.id}" 
} 