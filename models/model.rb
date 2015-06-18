require 'themoviedb'
Tmdb::Api.key("810761e94f6d2ee187cad60f68c35cff")  
Tmdb::Api.language("en")

def find(inquiry)
  results = Tmdb::Movie.find(inquiry)
  title = []
  results[0..9].each do |result|
    title.push(result.original_title)
    
  end
  return title
end


