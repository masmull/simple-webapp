# pakai image node resmi
FROM node:18-alpine

# folder kerja di dalam container
WORKDIR /app

# copy package dulu (biar cache optimal)
COPY package*.json ./

# install dependency
RUN npm install

# copy semua file project
COPY . .

# buka port
EXPOSE 3000

# jalankan app
CMD ["npm", "start"]
