variable "sg_name" {
    default = "allow_terraform"
} 

variable "sg_description" {
    default =  "allow ssh from all ports"
} 

variable "from_port"{
    default = "22"
} 

variable "to_port" {
  default = "22"
} 

variable "protocol" {
  default = "tcp"
} 

variable "instance_type" {
    default = "t3.micro"
}

variable "instance_names" {
    default = ["mysql" , "backend", "frontend"]
} 

variable "zone_id" {
    default = "Z04805221YTNAM0LILIIJ"
} 

variable "domain_name"{
    default = "vasavi.online"
}

variable "tags" {
   default = {
    Name = "backend"
    Environment = "dev" 
    Project = "expense" 
    Terraform = "true"
   } 
}