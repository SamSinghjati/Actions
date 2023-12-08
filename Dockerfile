# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose port 9090 to the outside world
EXPOSE 9090

# Define the command to run the application and add echo command
CMD ["sh", "-c", "npm start && echo 'Container successfully ran by Github Actions CI'"]
