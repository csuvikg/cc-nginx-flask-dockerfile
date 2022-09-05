FROM nginx:1.23

COPY . .
COPY nginx.conf /etc/nginx/nginx.conf

RUN apt update && apt install python3 python3-pip -y && \
pip3 install -r requirements.txt

CMD ./app.sh

EXPOSE 80
