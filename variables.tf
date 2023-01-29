variable "aws_region" {
  type        = string
  description = "AWS default region"
  default     = "eu-central-1"
}

variable "access_ip" {
  type = string
}

# --- database variables --
variable "dbname" {
  type = string
}

variable "dbuser" {
  type      = string
  sensitive = true
}

variable "dbpassword" {
  type      = string
  sensitive = true
}

variable "k3s_token" {
  type      = string
  sensitive = true
}

variable "public_key_path" {
  type      = string
  sensitive = true
}

variable "private_key_path" {
  type      = string
  sensitive = true
}