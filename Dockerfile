# tải ứng dụng bên thứ 3 về image WORKDIR quy đinh file trên vscode lên docker
FROM nginx
WORKDIR /usr/share/nginx/html 
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
COPY . .
#docker build . -t img-html:v1 tạo img
#docker run -d -p 3000:80 --name cons-html img-html:v1 tạo container