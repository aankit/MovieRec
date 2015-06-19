require 'themoviedb'
Tmdb::Api.key("810761e94f6d2ee187cad60f68c35cff")  
Tmdb::Api.language("en")
# result = Tmdb::Movie.find("batman")
# puts result[0].vote_average

def top_ten_alpha(title_search)
  results = Tmdb::Movie.find(title_search)
  title = []
  results[0..9].each do |result|
  title.push(result.original_title)
  end
  return title
end

def top_ten_year(title_search, extra_search)
  results = Tmdb::Movie.find(title_search)
  extra_search = extra_search.to_i
  movie_years = {}
  results.each do |result|
    value = result.release_date
    value = value.split("-")
    value = value[0].to_i
    if value >= extra_search - 3 && value <= extra_search + 3
      movie = result.original_title
      movie_years[movie] = value
    end
  end
  return movie_years
end

def top_ten_vote(title_search, vote_avg_search)
  results = Tmdb::Movie.find(title_search)
    vote_avg_search = vote_avg_search.to_i
    movie_vote = {}
    results.each do |result|
      rate = result.vote_average
      if rate >= vote_avg_search - 1 && rate <= vote_avg_search + 1
        movie_title = result.original_title
        movie_vote[movie_title] = rate
      end
    end
  return movie_vote
end