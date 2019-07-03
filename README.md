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
- Google Chrome
- iTerm


# How to Use ?
Make sure you have the UAA API token, you can get this from Pivnet in `Edit Profile`
1. Login as a user with sufficient privileges to execute the file. Newly imaged marketing laptops should have sufficient privileges since only a single admin user (UID501) exists.
2. Open the Terminal.
3. Clone the script `git clone https://github.com/everythingeverywhere/pivinstall.git`
4. Run the script `./pivinstall.sh`


# Troubleshooting
Problem: Script doesn't execute
Answer: Make it an executable file! `chmod +x pivinstall.sh`
