# 베이스 이미지
FROM node:16-alpine

WORKDIR /usr/src/app

COPY package*.json ./

EXPOSE 3000

# 도커 이미지가 생성되기전 수행할 쉘 명령어
RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000


# 컨테이너 시작시 실행 될 명령어를 명시
CMD [ "node", "dist/main"]


