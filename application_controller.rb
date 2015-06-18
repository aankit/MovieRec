require 'bundler'
Bundler.require
require '/home/nitrous/code/labs/my_project/models/model.rb'


class MyApp < Sinatra::Base

  get '/' do
    erb :index  
  end

  post '/' do
    @title = params["title"]
    @genre = params["genre"]
    puts find(@title)
    puts find(@genre)
    erb :index
  end
end
