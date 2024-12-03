# Use the official Node.js image
FROM node:16

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose port
EXPOSE 5000

# Run the application
CMD ["npm", "run", "server"]
