# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the source
COPY . .

# Expose the app port
EXPOSE 4000

# Start the app
CMD ["npm", "run", "dev"]
