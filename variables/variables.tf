variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "This is AMI ID of Devops-practice which is RHEL-9"
}

variable "instance_type"{
    type = string
    default = "t3.micro" 
}

variable "sg_name"{
    default = "allow-sshh"
}

variable "sg_description"{
    default = "allow port number 22 for ssh access"
}

variable "tags"{
    type = map   #optional
    default = {
        Name = "Backend" 
        Project = "Expense" 
        Component = "backend" 
        Environment = "Dev" 
        Terraform = "true"
    }

}

variable "from_port"{
    type = number
    default = 22 
}

variable "to_port"{
    type = number 
    default = 22 
}

variable "protocol"{
    default = "tcp"
}

variable "ingress_cidr"{
    type = list(string)
    default = ["0.0.0.0/0"]
}