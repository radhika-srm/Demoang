# Use the official Node.js image as a base
FROM node:20 AS build

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Angular app for production
RUN ng build 


# Expose port 7071 to access the Azure Functions runtime
#EXPOSE 7071

# Specify the command to run the Azure Functions runtime
#CMD [ "npm", "start" ]
