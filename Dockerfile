FROM node:latest
WORKDIR /app
#add everything from user-service-api to /app directory
ADD . .
#node package manager install all dependencies from package json 
RUN npm install 
CMD node index.js