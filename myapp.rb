# myapp.rb

require 'sinatra'
require 'json'

get '/' do 
	'Hello world!'
end

get '/recipes' do
	content_type :json

  	[{ :recipe_name => 'chocolate crepe'}, 
  		{:recipe_name => 'bourbon sweet potatoes' },
  		{:recipe_name => 'glazed turkey' },
  		{:recipe_name => 'cranberry relish' },
  		{:recipe_name => 'fennel and sourdough bread stuffing' },
  		{:recipe_name => 'cherry rhubarb pie' }].to_json
end