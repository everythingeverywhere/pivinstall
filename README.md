# pivinstall.sh

A simple bash script for a mac install of
- brew
- Spring Boot CLI
- CF CLI
- openJDK8
- Gradle
- Maven
- Terraform
- Docker for Desktop
- Fly CLI (Concourse CLI)
- Kubectl CLI (compatible version with PKS CLI)
- PKS CLI

# How to Use ?
Make sure you have the UAA API token, you can get this from Pivnet in `Edit Profile`
1. Open the terminal
2. `git clone https://github.com/everythingeverywhere/pivinstall.git`
3. Login as super user with SUDO to have maximum permission to install files
4. cd into ./pivinstall 
5. If you are ready to run the script 
    - Enter `sh pivinstal.sh` 


Chmod 755 pivinstall.sh Chmod +x pivinstall.sh