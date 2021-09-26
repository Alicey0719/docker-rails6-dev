FROM ruby:3.0.2
RUN apt update
RUN apt install -y sqlite3 curl wget vim less git

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt update && apt install -y nodejs yarn

RUN mkdir /code
WORKDIR /code




