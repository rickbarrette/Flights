FROM ruby:latest

WORKDIR /usr/src/app

COPY . .
RUN bundle install

CMD rails db:migrate

EXPOSE 3000
CMD rails server -b 0.0.0.0