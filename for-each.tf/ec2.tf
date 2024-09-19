resource "aws_security_group" "allow_ssh_terraform"{
    name = "allow-terraform"
    description = "allow all ports"

    egress {
        from_port    = 0
        to_port      = 0 
        protocol     = "-1" 
        cidr_blocks  = ["0.0.0.0/0"] 
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port    = 22 
        to_port      = 22 
        protocol     = "tcp"
        cidr_blocks  = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
     }

     tags = {
        Name = "terrafom-ssh"
     }
}

resource "aws_instance" "terraform"{
    ami = "ami-09c813fb71547fc4f"
    for_each = var.instance_names
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
        Name = "terraform"
    }
}