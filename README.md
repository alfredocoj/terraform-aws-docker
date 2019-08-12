# terraform-aws-examples
Examples with Terraform:

1. Ubuntu EC2 in AWS.
2. Mario Bros with Docker and Terraform.

## Installing terraform

Run the following command sequence on the terminal.

```
wget https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip
unzip terraform_0.11.8_linux_amd64.zip
mv terraform /bin/
terraform
```

## Clone the Repository

```
git clone https://gitlab.com/cristianvitortrucco/terraform-docker

cd terraform-docker 
```

## Run Terraform

Initializing terraform will automatically download the necessary plugins.
```
terraform init
```
Check with the following command what terraform will provision, this command is a preview.
```
terraform plan
```
After checking the output, the apply command will build the infrastructure declared in the *.tf file.
```
terraform apply
```
Confirme with "yes" to realize to deploy.

## References:

[Source 1 - Getting Started](https://learn.hashicorp.com/terraform/getting-started)

[Source 2 - Terraform Docker ](https://gitlab.com/cristianvitortrucco/terraform-docker)

[Source 3 - Automotive with its terraform infrastructure](https://www.concrete.com.br/2018/12/28/automotize-a-sua-infraestrutura-com-terraform/)
