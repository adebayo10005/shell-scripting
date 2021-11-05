provider "aws" {
        region  = "us-east-1"
}

resource "aws_instance" "smart" {
        ami           = "ami-0dc863062bc04e1de"
        instance_type = "t3.micro"
        vpc_security_group_ids = [aws_security_group.allow_smart.id, "sg-0f9e6ed8764c32142"]

        tags = {
                Name = "smart"
        }
}

resource "aws_security_group" "allow_smart" {
        name        = "allow_smart"
        description = "Allow smart traffic"

        ingress = [
                {
                        description      = "TLS from VPC"
                        from_port        = 22
                        to_port          = 22
                        protocol         = "tcp"
                        cidr_blocks      = ["0.0.0.0/0"]
                        ipv6_cidr_blocks = []
                        prefix_list_ids  = []
                        security_groups  = []
                        self             = false
                }
        ]

        egress = [
                {
                        description      = "egress"
                        from_port        = 0
                        to_port          = 0
                        protocol         = "-1"
                        cidr_blocks      = ["0.0.0.0/0"]
                        ipv6_cidr_blocks = ["::/0"]
                        prefix_list_ids  = []
                        security_groups  = []
                        self             = false

                }
        ]

        tags = {
                Name = "allow_smart"
        }
}


