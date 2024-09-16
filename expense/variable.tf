variable "instance_names"{
    type = list(string)
    default = ["mysql","backend","frontend"]
}

variable "common_tags"{
    type = map 
    default = {
        Project = "Expense" 
        Environment = "Dev" 
        Terraform = "true"
    }
}

variable "zone_id"{
    default = "Z04805221YTNAM0LILIIJ"
}

variable "domain_name"{
    default = "vasavi.online"
}