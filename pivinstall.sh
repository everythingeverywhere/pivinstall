#!/bin/bash
#Homebrew install
printf -- 'Installing Hombebrew... \n ' && \
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && \
#openJDK8 Install
printf -- 'Intalling OpenJDK v8 ... \n'
brew cask install adoptopenjdk && \
brew tap AdoptOpenJDK/openjdk && \
brew cask install OpenJDK8 with Hotspot JVM && \
#Gradle install
printf -- 'Installing Gradle... \n ' && \
brew install gradle
#Maven install
printf -- 'Installing Maven... \n ' && \
brew install maven
#Terraform install
printf -- 'Installing terraform... \n ' && \
brew install terraform
#Fly CLI
printf -- 'Downloading Fly CLI .tar file... \n' && \
curl  -O https://github.com/concourse/concourse/releases/download/v5.3.0/fly-5.3.0-darwin-amd64.tgz && \
printf -- 'Installing Fly CLI... \n ' && \
tar -zxvf fly-5.3.0-darwin-amd64.tgz && \
printf -- 'Moving Fly CLI to /usr/local/bin/fly \n ...' && \
sudo mv fly-5.3.0-darwin-amd64.tgz /usr/local/bin/fly && \
fly --version && \
#CF CLI Install
printf -- 'Installing CF CLI... \n' && \
brew tap cloudfoundry/tap  && \
brew install cf-cli  && \
cf --help && \
#Kubectl Install
printf -- 'Installing kubeCUTL or kube C. T. L. ... \n' && \
curl -O https://storage.googleapis.com/kubernetes-release/release/v1.4.1/bin/darwin/amd64/kubectl
chmod +x ./kubectl && \
sudo mv ./kubectl /usr/local/bin/kubectl && \
kubectl version && \
brew cleanup && \
printf -- '\n';