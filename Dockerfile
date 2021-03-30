FROM ubuntu
LABEL maintener="guyduche@gmail.com"
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
