FROM debian:11-slim
RUN apt-get update
RUN apt-get install -y build-essential zlib1g-dev ruby-dev curl
RUN gem install jekyll bundler
WORKDIR /usr/src/app
CMD jekyll serve -d /_site --watch --force_polling --disable-disk-cache -H 0.0.0.0 -P 4000