# Use the official Node.js 14.17.4 LTS image as the base image
FROM node:14.17.4

# Set the working directory in the container
WORKDIR /app

# Copy the application code to the working directory
COPY . .

# Install the dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Start the Node.js application
CMD ["npm", "start"]
