resource "aws_security_group" "sg_test" {
   name = "vpc_test_web"
   vpc_id = aws_vpc.vpc_test.id
   ingress {
     from_port = 80
     to_port = 80
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }
   ingress {
     from_port = 443
     to_port = 443
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }
   
   ingress {
     from_port = 22
     to_port = 22
     protocol = "tcp"
     cidr_blocks =  ["0.0.0.0/0"]
   }
   
   tags = {
     Name = "Web Server SG"
   }
}


