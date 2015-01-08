FROM ruby:1.9.3
ADD . /usr/src/app
WORKDIR /usr/src/app
RUN chmod +x yo.rb
RUN bundle install
CMD ["./yo.rb"]
