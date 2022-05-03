FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

EXPOSE 3000

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000


## 애플리케이션 실행
CMD [ "node", "dist/main"]


