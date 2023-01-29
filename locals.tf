locals {
  vpc_cidr = "10.123.0.0/16"
}

locals {
  security_groups = {
    public = {
      name        = "public_sg"
      description = "Security Group for public access"
      ingress = {
        open = {
          from       = 0
          to         = 0
          protocol   = -1
          cidr_block = [var.access_ip]
        }
        http = {
          from       = 80
          to         = 80
          protocol   = "tcp"
          cidr_block = ["0.0.0.0/0"]
        }
        nginx = {
          from       = 8000
          to         = 8000
          protocol   = "tcp"
          cidr_block = ["0.0.0.0/0"]
        }
      }
    }
    rds = {
      name        = "private_rds_sg"
      description = "Security Group for mysql access"
      ingress = {
        mysql = {
          from       = 3306
          to         = 3306
          protocol   = "tcp"
          cidr_block = [local.vpc_cidr]
        }
      }
    }
  }
}