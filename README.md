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
- Make sure you have the UAA API token, you can get this from Pivnet in `Edit Profile`

- Homebrew doesn't allow running as root so you will have to enter your password when asked



Chmod 755 pivinstall.sh 
Chmod +x pivinstall.sh
1. Open the terminal
2. `git clone https://github.com/everythingeverywhere/pivinstall.git`
4. `cd ./pivinstall # go into pivinstall directory`
5. `Chmod 755 pivinstall.sh #permission for all to read and execute file `
6. `Chmod +x pivinstall.sh #everyone can get file listing`
7. If you are ready to run the script 
    - Enter `sh pivinstal.sh` 
