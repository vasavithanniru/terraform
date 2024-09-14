variable "sg_name"{
    default = "allow-sssh"
}

variable "sg_description"{
    default = "allow ssh from all ports"
}

variable "from_port"{
    default = 22  
}

variable "to_port"{
    default = 22 
}

variable "protocol"{
    default = "tcp"
}

variable "ingress_cidr_blocks"{
    default = ["0.0.0.0/0"]
}

variable "ami_id"{
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type"{
    default = "t3.micro"
}

variable "tags"{
    type = map 
    default = {
       Name = "Backend"
       Project = "Expense" 
       Component = "backend" 
       Environment = "Dev"
       Terraform = "yes"

    }
}