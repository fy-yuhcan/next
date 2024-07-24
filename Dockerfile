FROM node:20-alpine3.20

ENV TZ Asia/Tokyo

WORKDIR /usr/src/app

COPY ./ ./
RUN apk update && apk add bash
RUN npm install

CMD ["npm", "run", "dev"]