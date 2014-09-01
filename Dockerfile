FROM node
MAINTAINER Marek Kubica <marek@xivilization.net>

RUN npm cache clean -f && npm install --silent -g n && n 0.10.31 && curl https://install.meteor.com/ | sh && npm install --silent -g forever

ENV ROOT_URL http://127.0.0.1
ENV PORT 3000

EXPOSE 3000
