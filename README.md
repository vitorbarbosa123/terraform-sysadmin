# terraform-sysadmin

## Description
Terraform exemplification for sysadmin

### How to use

#### Requirements

* [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
* [Docker](https://docs.docker.com/engine/install/)

#### Run

jump to **feeling_analysis/terraform/dev** or **feeling_analysis/terraform/qa** or **feeling_analysis/terraform/prod**. Then, run `terraform init` next `terraform apply`. These two commands create the container for the enviroment

http://localhost:5001 → dev
http://localhost:5002 → qa
http://localhost:5003 → prod

#### Destroy
If any changes occours in base code, the env needs to be destroy. To do that, first, jump to **feeling_analysis/terraform/env_name**, then run `terraform destroy`.



