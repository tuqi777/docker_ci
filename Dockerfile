FROM node:12
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN npm config set registry https://registry.npm.taobao.org/ && \  
    npm i
# RUN npm i
EXPOSE 7777
#pm2在docker中使用命令为pm2-docker
# CMD ["pm2-runtime", "start", "--json", "process.json"]
CMD ["node", "webhooks.js"]
