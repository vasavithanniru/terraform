variable "instance_names"{
    type = map
    default = {
        mysql = "t3.small" 
        backend = "t3.micro" 
        frontend = "t3.micro"
    }
}

variable "zone_id"{
    default = "Z04805221YTNAM0LILIIJ"
}

variable "domain_name"{
    default = "vasavi.online"
}