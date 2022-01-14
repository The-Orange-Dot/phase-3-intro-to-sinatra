require 'sinatra'

class App < Sinatra::Base

  set :default_content_type, 'application/json'

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get "/what" do
    "<p>Whadadadadadadada!!!</p>"
  end

  get "/dice" do
    roll = rand(1..6)
    {roll: roll}.to_json
  end
  
end

run App
