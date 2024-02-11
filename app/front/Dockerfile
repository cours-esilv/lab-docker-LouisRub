FROM nginx:latest

WORKDIR /usr/share/nginx/html

COPY . .

RUN chmod +x entrypoint.sh

RUN apt-get update && apt-get install -y dos2unix && dos2unix entrypoint.sh

ENV WS_BACK_URL=http://new-container:8080

ENTRYPOINT ["./entrypoint.sh"]
