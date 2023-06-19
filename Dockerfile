
FROM node:12-alpine

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install --global yarn

RUN yarn

RUN yarn run build

EXPOSE 8080

CMD [ "node", "server.js" ]
