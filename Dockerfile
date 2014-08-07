FROM node
MAINTAINER Marek Kubica <marek@xivilization.net>

RUN npm cache clean -f && npm install --silent -g n && n 0.10.30 && curl https://install.meteor.com/ | sh && npm install --silent -g forever meteorite

ENV ROOT_URL http://127.0.0.1

EXPOSE 3000
