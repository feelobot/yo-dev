FROM ruby:2.2.0-onbuild
RUN chmod +x yo.rb
EXPOSE 3000
CMD ["./yo.rb"]
