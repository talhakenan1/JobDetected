FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

# Ensure data directory exists and has correct permissions
RUN mkdir -p data

# The app listens on port 3000
EXPOSE 3000

CMD ["node", "server.js"]
