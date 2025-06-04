FROM node:alpine

WORKDIR /app

COPY . .

# 安装需要的依赖，使用apk而不是apt
RUN apk update && \
    apk add --no-cache bash && \
    chmod +x index.js && \
    npm install 

EXPOSE 3000

CMD ["node", "index.js"]
