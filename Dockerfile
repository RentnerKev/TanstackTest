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

# WICHTIG: Nutze 'vite preview' via npm run serve
# --host 0.0.0.0 erlaubt Zugriff von außen (Coolify)
# --port 3000 zwingt den Server auf den richtigen Port
CMD ["npm", "run", "serve", "--", "--host", "0.0.0.0", "--port", "3000"]