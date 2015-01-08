FROM ruby:2.2.0
ADD . /usr/src/app
WORKDIR /usr/src/app
RUN bundle install
EXPOSE 8080
CMD ["./run.sh"]
