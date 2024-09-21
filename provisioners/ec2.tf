resource "aws_security_group" "ssh_terraform" {
    name = "ssh-Terraform"
    description = "allow all ports" 

    egress {
        from_port = 0 
        to_port = 0 
        protocol = "tcp" 
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22 
        to_port = 22
        protocol = "tcp" 
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name= "Terraform"
    }
}

resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro" 
    vpc_security_group_ids = [aws_security_group.ssh_terraform.id]
    tags = {
        Name = "Terraform"
    }

    provisioner "local-exec" {
        command = "bash -c 'echo ${self.private_ip} > private_ip.txt'"
    }

    connection {
        type     = "ssh"
        user     = "ec2-user"
        password = "DevOps321"
        host     = self.public_ip
    }

}
