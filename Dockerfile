# 使用官方 Node.js 镜像作为基础镜像
FROM node:16

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制所有文件到容器内
COPY . .

# 暴露项目端口
EXPOSE 8080

# 构建项目
RUN npm run build

# 启动项目
CMD ["npm", "run", "serve"]
