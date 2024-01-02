# 使用官方 Nginx 镜像
FROM nginx:latest

# 将本地文件复制到容器中的 /usr/share/nginx/html 目录
COPY index.html /usr/share/nginx/html/
COPY public /usr/share/nginx/html/public

# 暴露容器的端口
EXPOSE 80

# 启动 Nginx 服务
CMD ["nginx", "-g", "daemon off;"]
