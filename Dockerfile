#each row is a layer
#use of alpine version of node image to reduce the image size
#control of image version by specifying base image version
FROM node:18.18.1-alpine
WORKDIR /app
#add package.json to working directory, caching approach - docker know where packages are and compute changes
# if not docker will install what is needed and add it. ú = directory, . = destination
ADD package*.json ./
#node package manager install all dependencies from package json 
RUN npm install 
#add everything from user-service-api to /app directory
ADD . .
CMD node index.js