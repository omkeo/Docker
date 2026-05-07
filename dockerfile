# Use official Node.js image
FROM node:20

# Create app folder inside container
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Expose app port
EXPOSE 3000

# Start Node.js app
CMD ["npm", "start"]
