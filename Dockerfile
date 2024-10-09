# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

RUN npm install

# Copy the remaining application code to the working directory
COPY . .

# Set the environment variable for production
ENV NODE_ENV=production

# Expose port 3010
EXPOSE 3010
