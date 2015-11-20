# app file is our application and all routes
# as main file in application, it requires bundler to bundle gems etc

# !!!!!!!!! DON'T FORGET TO RUN bundle AFTER CHANGES !!!!!!!!!
# !!!!!!!!! THEN bundle exec rackup TO LAUNCH SERVER !!!!!!!!!

require 'bundler'
Bundler.require # Bundler class

############ ROUTES ###################

# main route at root
get '/' do
   main_hash = {
      :name => 'small animals',
      :message => 'some animals'
   }
   return main_hash.to_json
end

# five routes for small animals
# each with should return a hash turned JSON with the following keys: :name, :cuteness, :habitat, :picture_url, and :description
get '/kitten' do
   kitten_hash = {
      :name => 'bingo',
      :cuteness => '9',
      :habitat => 'living room',
      :picture_url => 'https://pbs.twimg.com/profile_images/562466745340817408/_nIu8KHX.jpeg',
      :description => 'Bingo attacks moving objects.'
   }
   return kitten_hash.to_json
end

get '/jack_russel' do
   jack_hash = {
      :name => 'jack',
      :cuteness => 'deceptively cute',
      :habitat => 'backyard rabbit habitats',
      :picture_url => 'http://www.terrificpets.com/images/uploads/breeds_07249104103574_1.jpg',
      :description => 'incredibly agile'
   }
   return jack_hash.to_json
end

get '/pekingese' do
   pek_hash = {
      :name => 'peppy',
      :cuteness => 'people fawn on the street',
      :habitat => 'couches',
      :picture_url => 'https://s-media-cache-ak0.pinimg.com/736x/98/28/fe/9828feb7f5a27ecfee4e13bf476cf2ee.jpg',
      :description => 'dang hair keeps growing'
   }
   return pek_hash.to_json
end

get '/mouse' do
   mouse_hash = {
      :name => 'mike',
      :cuteness => 'some people actually terrified',
      :habitat => 'petco',
      :picture_url => 'http://dreamatico.com/data_images/mouse/mouse-2.jpg',
      :description => 'sleep in a pile'
   }
   return pek_hash.to_json
end

get '/boxer' do
   boxer_hash = {
      :name => 'tony',
      :cuteness => 'cute but tough looking',
      :habitat => 'long walks and dog parks',
      :picture_url => 'http://a-z-animals.com/media/animals/images/470x370/boxer_dog4.jpg',
      :description => 'will beat other dogs in dog wrestling'
   }
   return boxer_hash.to_json
end






###########################################################
#                 DON'T NEED THIS CODE ...                #
###########################################################
#
#
# # what to get when at domain root (root = /) (domain/resources)
# get '/' do
#    # embedded ruby, get layout first, then get this:
#    erb :hello  # puts hello.erb content into layout secret code section
# end
#
# get '/worlds' do
#    erb :world
# end
#
# post '/submit_form' do
#    p params #
#    return params.to_json # since sinatra needs a string
# end
#
#
# get '/happy' do
#    happy_things = Dictionary.new ( {
#       :theworld => 'is awesome'
#       })
#       return happy_things.to_json
# end
