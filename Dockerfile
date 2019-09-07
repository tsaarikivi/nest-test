FROM node:10-alpine AS build
WORKDIR /build
COPY . .
RUN npm run build

FROM node:10-alpine
WORKDIR /usr/src/app
COPY --from=build /build/node_modules ./node_modules
COPY --from=build /build/dist ./dist

EXPOSE 8080
CMD ["npm", "run", "start:prod"]