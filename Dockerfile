# BASE IMAGE
FROM node:14.16.0-alpine3.13

# RUN addgroup app && adduser -S -G app app
# USER app
RUN apk update && apk add bash

# SET /app as working directory in the container
WORKDIR /app

# COPY package.json file
COPY package*.json ./

# INSTALL DEPENDENCIES
RUN npm install

# COPY ALL THE REST FILES
COPY . .

# EXPOSE THE APP TO PORT 5000
EXPOSE 5000 

# RUN THE APPLICATION
CMD ["npm", "start"]
