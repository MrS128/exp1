FROM nginx

WORKDIR /usr/share/nginx/html
COPY html/* /usr/share/nginx/html

# CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ Hello_docker.html > index.html ; nginx -g 'daemon off;'

CMD nginx -g 'daemon off;'

# Build command:
# docker build -t dms/mynginx .

# Run command:
# docker run --name mynginx -p 80:80 dms/mynginx