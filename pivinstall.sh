#!/bin/bash
#Homebrew pivinstall
printf -- 'PivPivinstalling  Hombebrew... \n ' && \
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
#openJDK8 pivinstall
printf -- 'Intalling OpenJDK v8 ... \n'
brew cask install adoptopenjdk && \
brew tap AdoptOpenJDK/openjdk && \
brew cask adoptopenjdk8 && \
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
#Fly CLI v5.3.0 pivinstall
printf -- 'Downloading Fly CLI .tar file... \n' && \
curl  -OL https://github.com/concourse/concourse/releases/download/v5.3.0/fly-5.3.0-darwin-amd64.tgz && \
printf -- 'Unzipping Fly CLI... \n ' && \
tar -zxvf fly-5.3.0-darwin-amd64.tgz && \
printf -- 'Pivinstall by moving fly directory to /usr/local/bin/fly \n ...' && \
sudo mv fly /usr/local/bin/ && \
printf -- 'What's the fly version? && \
fly --version && \
#Kubectl Install
printf -- 'Pivinstalling kubeCUTL or kube C. T. L. ... \n' && \
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.13.5/bin/darwin/amd64/kubectl
chmod +x ./kubectl && \
sudo mv ./kubectl /usr/local/bin/ && \
kubectl version && \
brew cleanup && \
printf -- 'end of pivinstall.sh script \n'