FROM ruby:latest

WORKDIR /usr/src/app

COPY . .

RUN ["chmod", "+x", "docker-entrypoint.sh"]

RUN ["bundle", "install"]

EXPOSE 3000

ENTRYPOINT ["/bin/sh", "/usr/src/app/docker-entrypoint.sh"]