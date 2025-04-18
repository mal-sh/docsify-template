# Use lightweight Node.js Alpine image
FROM node:18-alpine

# Install docsify-cli globally
RUN npm install -g docsify-cli@latest

# Create app directory
WORKDIR /app

# Copy all files from the template (excluding node_modules)
COPY . .

# Expose the default docsify port
EXPOSE 3000

# Launch docsify
CMD ["docsify", "serve", "--port=3000", "--open"]
