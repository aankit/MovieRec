require 'themoviedb'
Tmdb::Api.key("810761e94f6d2ee187cad60f68c35cff")  
Tmdb::Api.language("en")


def top_ten_alpha(title_search)
  results = Tmdb::Movie.find(title_search)
  title = []
  results[0..9].each do |result|
  title.push(result.original_title)
  end
  return title
end



def top_ten_year(title_search, year_search)
  results = Tmdb::Movie.find(title_search)
  year_search = year_search.to_i
  movie_years = {}
  results.each do |result|
    value = result.release_date
    value = value.split("-")
    value = value[0].to_i
    if value >= year_search - 3 && value <= year_search + 3
      movie = result.original_title
      movie_years[movie] = value
    end
  end
  return movie_years
end

