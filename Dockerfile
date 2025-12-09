FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

# Installiert alle Abhängigkeiten
RUN npm install

COPY . .

# Baut die App
RUN npm run build

# Port 3000 freigeben
EXPOSE 3000

ENV PORT=3000
ENV HOST=0.0.0.0
CMD ["node", "dist/server/server.js"]