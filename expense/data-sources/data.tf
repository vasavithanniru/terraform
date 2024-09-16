data "aws_ami" "joindevops"{


    most_recent = true 
    owners      = [""]

    filter {
        name = "name"
        values = ["RHEL-9-Devops-practice"]
    }

    filter {
        name = "root-device-type" 
        values = ["ebs"]
    }

    filter {
        name = "virtualization-type" 
        values = ["hvm"]
    }
}
