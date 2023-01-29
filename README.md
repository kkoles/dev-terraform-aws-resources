# Terraform AWS sample setup

The file terraform.tfvars with the following data is required:

```
access_ip  = <your-ip-address>
dbname     = <rds-db-name>
dbuser     = <rds-db-user>
dbpassword = <rds-db-user-password>

public_key_path  = <path-to-your-public-ssh-key>
private_key_path = <path-to-your-private-ssh-key>

k3s_token = <k3s-token>

```