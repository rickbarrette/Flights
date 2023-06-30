FROM ruby:latest

WORKDIR /usr/src/app

COPY . .
RUN bundle install

#CMD ["rails s -b 0.0.0.0"]
