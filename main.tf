terraform {
  required_providers {
    postgresql = {
      source = "cyrilgdn/postgresql"
    }
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "postgresql" {
  username = aws_db_instance.default.username
  password = aws_db_instance.default.password
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "postgres"
  engine_version       = "13.1"
  instance_class       = "db.t3.micro"
  username             = var.postgres_user
  password             = var.postgres_password
  parameter_group_name = "default.postgres13.1"
  skip_final_snapshot  = true
  publicly_accessible = true
}

resource "postgresql_database" "user_service" {
  name = "user_service"
}

resource "postgresql_database" "community_service" {
  name = "community_service"
}

resource "postgresql_database" "image_service" {
  name = "image_service"
}

resource "postgresql_database" "notification_service" {
  name = "notification_service"
}
