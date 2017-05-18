FROM node:boron-wheezy
RUN npm install -g @google-cloud/functions-emulator
RUN apt-get update &&  apt-get -y install lsb-release apt-transport-https ca-certificates less strace

RUN echo "deb https://packages.cloud.google.com/apt cloud-sdk-$(lsb_release -c -s) main" > /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update && apt-get -y install google-cloud-sdk
RUN npm install -g babel-cli babel-preset-env

RUN mkdir /root/.config
RUN echo my-project|functions config set projectId my-project
RUN functions config set supervisorHost 0.0.0.0
EXPOSE 8010 9229
WORKDIR /usr/src/app
VOLUME ["/root/.config"]
