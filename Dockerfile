FROM ruby:2.2.0
ADD . /usr/src/app
EXPOSE 4567
WORKDIR /usr/src/app
RUN bundle install
CMD ["./run.sh"]
