# Use Node.js LTS
FROM node:18-alpine

# Workdir with your name
WORKDIR /Garcia_Mark_site

# Copy dependency files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project
COPY . .

# Build production version
RUN npm run build

# Install serve (to serve the build)
RUN npm install -g serve

# Expose port 7775
EXPOSE 7775

# Run the app
CMD ["serve", "-s", "build", "-l", "7775"]
