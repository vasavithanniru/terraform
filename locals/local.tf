locals {
    instance_type = "environment" == "prod" ? "t3.small" : "t3.micro"
 }