# Use the official Node.js image from Docker Hub as the base image
FROM node:14

# Set the working directory inside the Docker container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 to allow traffic to reach the app
EXPOSE 3000

# Command to start the Node.js application
CMD ["npm", "start"]
