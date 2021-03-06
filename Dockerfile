FROM node:10.15.2-alpine AS appbuild
WORKDIR /usr/src/app
COPY package.json ./
COPY .babelrc ./
RUN npm install
COPY ./src ./src
RUN npm run build


FROM node:10.15.2-alpine
WORKDIR /usr/src/app
COPY package.json ./
COPY .babelrc ./
RUN npm install
COPY --from=appbuild /usr/src/app/dist ./dist
EXPOSE 8080
CMD npm start
