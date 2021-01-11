terraform init
# deploy on lab using the var-file for the lab
terraform destroy -var-file env/lab/configuration.tfvars
# now, switch to another flavour by toggling the version
terraform destroy -var-file env/staging/configuration.tfvars