# 使用官方的 Nginx 映像
FROM nginx:alpine

# 將生產版本的應用文件複製到 Nginx 預設的服務文件夾
COPY ./dist/angular-tour-of-heroes/browser /usr/share/nginx/html

# 複製自定義 Nginx 配置文件
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 曝露 NGINX 服務的端口
EXPOSE 1234

# 啟動 NGINX
CMD ["nginx", "-g", "daemon off;"]
