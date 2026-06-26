FROM node:22

WORKDIR /usr/src/app

COPY . .

WORKDIR /usr/src/app/frontend-blog

RUN npm i
RUN npm run build

WORKDIR /usr/src/app/backend-blog

RUN npm i

EXPOSE 3001

CMD ["node", "app.js"]