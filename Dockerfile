FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Baut die App in den 'dist' Ordner
RUN npm run build

EXPOSE 3000

# HIER WAR DER FEHLER: Pfad auf dist/server/server.js angepasst
CMD ["node", "dist/server/server.js"]