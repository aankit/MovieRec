require 'bundler'
Bundler.require
require '/home/nitrous/code/labs/my_project/models/model.rb'


class MyApp < Sinatra::Base

  get '/' do
    erb :index  
  end

  post '/' do
    @title = params["title"]
    @top_ten_alpha = top_ten_alpha(@title)
    @date = params["date"]
    @top_ten_year = top_ten_year(@title, @date)
    puts @top_ten_year
    erb :index
  end
  
  
  
end
