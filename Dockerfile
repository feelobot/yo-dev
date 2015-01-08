FROM ruby:2.2.0
ADD . /usr/src/app
EXPOSE 3000
WORKDIR /usr/src/app
RUN bundle install
CMD ["./run.sh"]
