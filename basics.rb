require 'sinatra'
require 'sinatra/reloader'

get "/form" do
	erb :form
end

post '/form' do
    "You said '#{params[:message]}"
end

get '/secret' do  
  erb :secret  
end

post '/secret' do  
  params[:secret].reverse  
end  

get '/decrypt/:secret' do  
  params[:secret].reverse  
end

not_found do  
  status 404  
  'not found'  
end

not_found do  
  halt 404, 'page not found'  
end  

get "/hello/:name" do
	params[:name]
end

get "/more/*" do
params[:splat]
end

get "/" do
	"Hello, world"
end

get "/about" do
	'My name is Dre'
end
