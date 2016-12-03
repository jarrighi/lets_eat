# myapp.rb

require 'sinatra'
require 'json'
require 'mongo'
include Mongo

# Connecting to our MongoDB database



get '/' do 
	'API Documentation Will Be Here. Yay!'
end

get '/recipes' do
	# get all the recipes
	content_type :json

	client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'lets_eat')
	db = client.database
	recipes = client[:recipes]

	recipes.find.each do |recipe| 
		recipe.to_json
	end

  	# [{ :recipe_name => 'chocolate crepe'}, 
  	# 	{:recipe_name => 'bourbon sweet potatoes' },
  	# 	{:recipe_name => 'glazed turkey' },
  	# 	{:recipe_name => 'cranberry relish' },
  	# 	{:recipe_name => 'fennel and sourdough bread stuffing' },
  	# 	{:recipe_name => 'cherry rhubarb pie' }].to_json

  	# We want to add functionality to get all recipes based on a search string query such as 'chocolate' here. 
end

get '/recipe/:id' do
	# get a single recipe
end

post '/recipe' do
	# create a new recipe
end

put '/recipe/:id' do
	# update an existing recipe
end 

delete '/recipe/:id' do
	# delete a recipe
end

# User resource section below ********************



get '/users' do
	# Get a list of all users
end

get 'user/:id' do
	# Get a specific user
end

post '/user' do
	# Add a user
end

put '/user/:id' do
	# Update a user profile
end

delete 'user/:id' do
	# Delete a user
end

get '/user/:id/recipes' do
	# Get all of the recipes for a specific user
end 











