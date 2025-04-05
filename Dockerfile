# Node.js image.
FROM node:20

# Set the working directory in the container.
WORKDIR /app

# Copy package.json and package-lock.json.
COPY package*.json ./

# Install the latest npm
RUN npm install -g npm@11.2.0


# Install the app dependencies allowing legacy peer deps
RUN npm install --legacy-peer-deps

# Copy the rest of the application code
COPY . .

# Expose the port
EXPOSE 9000

# Start the app
CMD ["npm", "run", "start"]