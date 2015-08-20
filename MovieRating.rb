require 'imdb'

class GetFilms
# 	def intialize(array_of_films)
# 		@array_of_films = []
		
# 	end

	def fetch_film(array_of_film)
		@title_array = []
		array_of_film.each do|x|
			newmovie = Imdb::Search.new(x).movies[0].rating
			@title_array.push(newmovie)
		end
		puts @title_array
	end 

	def search_movie_id
			
	end

end
 
	my_fetcher = GetFilms.new
	puts my_fetcher.fetch_film(["Ghostbuster", "X-men", "Titanic"])