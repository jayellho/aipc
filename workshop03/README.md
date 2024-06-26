# AIPC Workshop Day03

## Initialise Packer
```
packer init config.pkr.hcl
```

## Build the Packer golden image
```
packer build --var do_token=${DO_PAT} .
```

## Provision Terraform resources
```
terraform plan -var "do_token=${DO_PAT}" -var "ssh_private_key=/root/.ssh/id_rsa" -var "cs_password=password123456" -var "cs_domain=test"
```