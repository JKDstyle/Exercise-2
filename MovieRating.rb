require 'imdb'


class GetFilms
# 	def intialize(array_of_films)
# 		@array_of_films = []
		
# 	end

	def show_films(array_of_films)
		array_of_films.each do |movie|
			print " El nombre de mi pelicula es "
			print movie
			print " El rating es de "
			newmovierating = Imdb::Search.new(movie).movies[0].rating
			print newmovierating
			puts "\n"
			show_director = Imdb::Search.new(movie).movies[0].director
			print  
			puts " #{show_director[0]} is the director"
			puts "\n"
			
			
		end
	end 

	def make_a_rating_board
			10.times do
				print "| " * 7
				puts "|"
			end
	end

	def make_a_rating_board_of_numbers
			7.times do |i|
				print "|#{i+1}" 

			end
			puts "|"
	end

end
 
	my_fetcher = GetFilms.new
	my_fetcher.show_films(["X-men", "Titanic"])
	my_fetcher.make_a_rating_board
	my_fetcher.make_a_rating_board_of_numbers