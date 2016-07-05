FROM node:argon

# Create app directory
ENV APP_ROOT /usr/src/app

RUN mkdir -p ${APP_ROOT}/
WORKDIR ${APP_ROOT}/

# Package Manifest on seperate image layer
COPY package.json ${APP_ROOT}/
RUN npm install

# Bundle app source
COPY . ${APP_ROOT}/

CMD [ "npm", "start" ]
