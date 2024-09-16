resource "aws_security_group" "allow_ssh_terraform" {
    name = "sshh"
    description = "allow all ports"


    egress {
        from_port = 0 
        to_port = 0 
        protocol = "-1" 
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 22
        to_port   = 22 
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow-terraform"
    }
}

resource "aws_instance" "terraform"{
    ami = "1111"
}
