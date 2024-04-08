FROM node:21-alpine3.18
RUN apk update && apk upgrade
RUN npm i -g pnpm
COPY entry.sh /tmp/entry.sh
RUN chmod +x /tmp/entry.sh
COPY ./app /app
WORKDIR /app