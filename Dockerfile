FROM ruby:2.2.0-onbuild
RUN chmod +x yo.rb
CMD ["./yo.rb"]
