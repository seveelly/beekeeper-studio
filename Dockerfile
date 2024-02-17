# Use an official Node.js runtime as a base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install app dependencies
RUN yarn install

# Bundle app source code
COPY . .

# Expose the default Electron port
EXPOSE 3000

# Start the Electron app
CMD ["yarn", "run", "electron:serve"]
