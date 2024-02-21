FROM node:latest as build

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to /app
COPY package*.json ./

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Install app dependencies
RUN npm install

# Copy the current directory contents to /app
COPY . .

# Expose port 4200
EXPOSE 4200

# Start the application with hot-reloading. 
# It will be updated if any change occurs within 10 milliseconds.
CMD ["ng", "serve", "--host", "0.0.0.0", "--poll", "10"]
