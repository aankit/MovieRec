require 'bundler'
Bundler.require
require './models/model.rb'


class MyApp < Sinatra::Base

  get '/' do
    erb :index  
  end

  post '/' do
    @title = params["title"]
    @top_ten_alpha = top_ten_alpha(@title)
    @date = params["date"]
    @top_ten_year = top_ten_year(@title, @date)
    @vote_avg = params["avg"]
    @top_ten_vote = top_ten_vote(@title, @vote_avg)
    puts @top_ten_alpha
    puts @top_ten_year
    puts @top_ten_vote
    erb :result
  end
  
  
  
end
