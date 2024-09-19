resource "aws_security_group" "allow_ssh_terraform"{
    name = var.sg_name
    description = var.sg_description

    egress {
        from_port = 0 
        to_port = 0 
        protocol = "-1" 
        cidr_blocks = ["0.0.0.0/0"] 
        ipv6_cidr_blocks = ["::/0"] 
    }

    ingress  {
        from_port = var.from_port
        to_port = var.to_port 
        protocol = var.protocol
        cidr_blocks = ["0.0.0.0/0"] 
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "ssh-terraform"
    }
}


resource "aws_instance" "terraform"{
    count = length(var.instance_names)
    ami = "ami-09c813fb71547fc4f" 
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id] 
    tags = {
        Name = var.instance_names[count.index]
     }
}


 
    