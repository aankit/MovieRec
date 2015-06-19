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
    @vote_avg = params["vote"]
    @top_ten_vote = top_ten_vote(@title, @vote)
    puts @top_ten_alpha
    puts @top_ten_year
    puts @top_ten_vote
    erb :result
  end
  
  
  
end
