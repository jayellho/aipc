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

## For Visual Studio Code
- Automate formatting: ```Ctrl+Shift+I```
- Connect to VM and use VSCode to do development:
    - Install the Remote - SSH extension on VSCode.
    - Press F1 to access the extension.
    - Set up `Add new SSH host...`.
    - Connect to the new host and open the folder.


## Best Practices
- Split application and infrastructure code into 2 repositories.
- App should be Dockerised and put into Kubernetes clusters.
- CI is by Github/Gitlab Actions. 
- See ByteByteGo - https://blog.bytebytego.com/p/ep98-gitops-workflow-simplified-visual
- Create another CI workflow to do scans on Terraform, Ansible etc. if needed.



## References
- Instructor's Github: https://github.com/darryl1975
- Instructor's Github repository for setup of control server: https://github.com/darryl1975/AIPC_day01_setup
- Instructor's Github for day 2:
	- https://github.com/kenken64/NUSISS-DevOpsEng/blob/master/workshop/workshop3-1.md
	- https://github.com/kenken64/aipc-workshop-day02

## Useful tools to consider
- WarpAI (something like Microsoft Copilot): https://www.warp.dev/warp-ai
