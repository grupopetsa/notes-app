FROM ruby:3.0.1-buster

WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_8.x | sh -

RUN apt-get update -y && apt-get install -y npm

RUN npm install --global yarn

COPY Gemfile* ./

RUN bundle install

COPY . .

RUN rails webpacker:install

CMD ["rails", "db:setup"]
