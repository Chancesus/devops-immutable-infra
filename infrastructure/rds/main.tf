provider "aws" {
    profile = var.profile
    region = "us-east-1"
}

resource "aws_db_instance" "default" {
    allocated_storage = 20
    storage_type = "gp2"
    engine = "postgres"
    instance_class = "db.t2.micro"
    db_name = "contacts_db"
    username = "postgres"
    password = var.password
    identifier = var.id
    vpc_security_group_ids = ["sg-08dce9f5cb725183a"]
    publicly_accessible = true
}