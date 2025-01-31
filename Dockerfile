# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Build the Next.js app
RUN npm run build

# Expose port 3000 (default for Next.js apps)
EXPOSE 3000

# Start the Next.js app in production mode
CMD ["npm", "run", "start"]
