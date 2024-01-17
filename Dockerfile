# Use the latest image of node
FROM node:latest

# Set the working directory in the container
WORKDIR /firstProjectDocker

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Expose the port on which your application will run
EXPOSE 3000

# Specify the command to run your application
CMD ["npm", "start", "first.js"]
