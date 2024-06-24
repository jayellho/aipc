# Useful commands:

## Authenticate to DigitalOcean and provision Terraform resources
1. Create SSH keys and copy in public key into DigitalOcean account.
2. Create personal access token (PAT) from DigitalOcean UI.
3. Copy PAT into an environment variable on your local machine and make it permanent.
    - Open .bashrc file for editing: ```nano ~/.bashrc```
    - Add in the environment variable at end of the file: ```export DO_PAT=<pat token>```
    - Save and run the following to implement changes: ```source ~/.bashrc```
4. Run Terraform on configuration files: 
    - ```terraform init```
    - ```terraform plan -var="do_token=${DO_PAT}"```
    - ```terraform apply -var="do_token=${DO_PAT}"```

## For VSC
- Automate formatting: ```Ctrl+Shift+I```