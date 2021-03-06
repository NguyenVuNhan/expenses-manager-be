FROM node:14-alpine

# Create working directory
RUN mkdir -p /app/server
WORKDIR /app/server

COPY package.json /app/server
COPY package-lock.json /app/server

RUN npm install

COPY . /app/server

CMD ["npm", "run", "dev"]
