require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello'
end

get '/anastasis' do
  'Hello, Anastasis'
end

get '/ellen' do
  'Hello, Ellen'
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/oldcat' do
  '<img src="http://bit.ly/1eze8aE" style="border:10px dashed red">'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
