FROM node:10-alpine
WORKDIR /usr/src/app

COPY . .
RUN npm ci --production

EXPOSE 3000
CMD ["npm", "run", "start:prod"]