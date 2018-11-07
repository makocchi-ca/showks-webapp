FROM node:8-alpine

RUN apk add --no-cache \
    build-base \
    g++ \
    cairo \
    cairo-dev \
    pango-dev \
    jpeg \
    jpeg-dev

WORKDIR /usr/src/app

RUN npm install canvas --only=production

COPY src/package*.json ./
RUN npm install --only=production

# Bundle app source
COPY src .

EXPOSE 8080
CMD [ "npm", "start" ]
