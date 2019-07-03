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

# How to use ?
- Make sure you have the UAA API token if you want to download PKS CLI.
    - You can get this from Pivnet in `Edit Profile`

- Homebrew doesn't allow running as root so you will have to enter your password when asked

1. Open the terminal
2. `git clone https://github.com/everythingeverywhere/pivinstall.git`
4. `cd ./pivinstall # go into pivinstall directory`
5. `Chmod 755 pivinstall.sh #permission for all to read and execute file `
6. `Chmod +x pivinstall.sh #everyone can get file listing`
7. If you are ready to run the script 
    - Enter `sh pivinstal.sh` 

# To verify install of CLI's 
- one by one
`pks --version`
`cf -v`
`fly -v`
`kubectl version`
`docker version`
`terraform version`
`gradle -v`
`java -version`
`spring --version`
`mvn -v`

# all at once
`pks --version && cf -v &&  fly -v && kubectl version && docker version && terraform version && gradle -v && java -version && spring --version && mvn -v`