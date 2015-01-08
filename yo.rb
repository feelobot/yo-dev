require 'sinatra'
require 'yo-ruby'

Yo.api_key = "#{ENV['YO_API_KEY']}"

get '/yo/:username' do
    begin
        Yo.yo!(params[:username])
    rescue YoUserNotFound => e
      puts "User does not exist."
    rescue YoRateLimitExceeded => e
        puts "Rate limit of one Yo per user per minute."
    end
end

get '/yoall' do
    Yo.all!
end

get '/subscribers' do
    puts "Subscribers: #{Yo.subscribers}"
end

get '/callback' do
    Yo.receive(params) do |username|
        # When I receive a yo to this callback, I can do something here.
    end
end
