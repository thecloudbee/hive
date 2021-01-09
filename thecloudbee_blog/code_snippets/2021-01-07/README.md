### Run the terraform using following commands

```
cd terraform/modules/app
terraform init
terraform plan -var-file env/lab/configuration.tfvars
terraform apply -var-file env/lab/configuration.tfvars
```