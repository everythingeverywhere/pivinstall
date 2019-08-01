#!/bin/bash

#New line method to increase readability of the script
new_line(){
    for ((line = 0; line < 5; line++))
        do
        printf -- '... \n'
    done
}

#Ask user if they want to install PKS and save UAA token to a variable to use later
while true; do
    read -p "Do you wish to install PKS? y or n: " yn
    case $yn in
    #If yes now, "Please enter your pivnet key aka UAA API TOKEN found in edit profile on pivnet"
        [Yy]* ) echo 'Enter your UAA API TOKEN:'; read pkstoken; break;;
        [Nn]* ) break;;
    esac
done

#Homebrew pivinstall
printf -- 'Pivinstalling  Homebrew... \n ' && \
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && \

#Spring Boot CLI pivinstall
printf -- 'Pivinstalling  Spring Boot CLI... \n' && \
brew tap pivotal/tap && \
brew install springboot && \

#CF CLI pivinstall
printf -- 'Pivinstalling  CF CLI... \n' && \
brew tap cloudfoundry/tap  && \
brew install cf-cli  && \
cf --help && \

#PKS pivinstall
if [ $pkstoken ]
then 
    printf -- 'Pivinstalling  Pivnet CLI... \n '
    brew install pivotal/tap/pivnet-cli 
    printf -- 'Logging into Pivnet with UAA API token... \n '
    pivnet login --api-token=$pkstoken 
    printf -- 'Downloading and pivinstalling PKS CLI \n '
    pivnet download-product-files \
        --product-slug=pivotal-container-service \
        --release-version=1.4.1 \
        --glob='pks-darwin-*'
    chmod +x pks-darwin-*
    sudo mv ./pks-darwin-* /usr/local/bin/pks
    printf -- 'Pivinstalling kubeCUTL or kube C. T. L. ... \n' 
    pivnet download-product-files \
        --product-slug=pivotal-container-service \
        --release-version=1.4.1 \
        --glob='kubectl-darwin-*'
    chmod +x kubectl-darwin-*
    sudo mv ./kubectl-darwin-*  /usr/local/bin/kubectl
fi

#openJDK8 pivinstall
printf -- 'Intalling OpenJDK v8 ... \n'
brew cask install adoptopenjdk && \
brew tap AdoptOpenJDK/openjdk && \
brew cask install adoptopenjdk8 && \

#Gradle pivinstall
printf -- 'Pivinstalling  Gradle... \n ' && \
brew install gradle && \

#Maven pivinstall
printf -- 'Pivinstalling  Maven... \n ' && \
brew install maven && \

#Terraform pivinstall
printf -- 'Pivinstalling  terraform... \n ' && \
brew install terraform && \

#Docker pivinstall
printf -- 'Pivinstalling  Docker... \n ' && \
brew cask install docker && \

#Homebrew extension --allows us to install iTerm and Chrome
brew tap caskroom/cask && \

#Google Chrome pivinstall
#printf -- 'Pivinstalling  Chrome... \n ' && \
#cd $HOME && \
#brew cask install google-chrome && \
#test -d /Applications/"Google Chrome.app" && \

#iTerm pivinstall
printf -- 'Pivinstalling  iTerm... \n ' && \
cd $HOME && \
brew cask install iterm2 && \
brew cask list | grep -q -x iterm2 && \

#Fly CLI v5.3.0 pivinstall
printf -- 'Downloading Fly CLI .tar file... \n' && \
curl  -OL https://github.com/concourse/concourse/releases/download/v5.3.0/fly-5.3.0-darwin-amd64.tgz && \
printf -- 'Unzipping Fly CLI... \n ' && \
tar -zxvf fly-5.3.0-darwin-amd64.tgz && \
printf -- 'Pivinstall by moving fly directory to /usr/local/bin/fly \n ...' && \
sudo mv fly /usr/local/bin/ && \
printf -- 'What's the fly version? && \
fly --version && \
brew cleanup && \

#Install Validation
new_line
printf -- 'Verify install of packages \n'

#PKS CLI
new_line
printf -- 'Pivinstalled PKS CLI ? \n'
pks --version

#CF CLI
new_line
printf -- 'Pivinstalled CF CLI ? \n'
cf -v

#Fly CLI
new_line
printf -- 'Pivinstalled Fly CLI ? \n'
fly -v 

#kubeCTL CLI
new_line
printf -- 'Pivinstalled kubectl CLI ? \n'
kubectl version --client=true

#Docker
open -a /Applications/Docker.app
new_line
printf -- 'Pivinstalled Docker ? \n'
docker version

#Terraform CLI
new_line
printf -- 'Pivinstalled terraform CLI ? \n'
terraform version 

#Gradle
new_line
printf -- 'Pivinstalled Gradle ? \n'
gradle -v

#JDK8
new_line
printf -- 'Pivinstalled java ? \n'
java -version 

#Spring CLI
new_line
printf -- 'Pivinstalled Spring CLI ? \n'
spring --version 

#Maven
new_line
printf -- 'Pivinstalled maven ? \n'
mvn -v

new_line
printf -- 'end of pivinstall.sh script \n'
printf -- '...Goodbye :) \n'
