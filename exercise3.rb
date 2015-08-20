class CommandLine
	def initialize 
		@user_name = "Alex"
		@hard_password = "1234"
		@correct = false
		@enter_user = ""
		@enter_password = ""
		@text = ""
		@option = ""
	end

	def get_entry
		print "Enter User name: "
		@enter_user = gets.chomp

		print "Enter password: "
		@enter_password = gets.chomp
	end

	def check_entry
		if @correct = (@enter_user == @user_name && @enter_password == @hard_password)
			puts "\nCorrect password entered!"
		else
			puts "\nWrong user name or password."
		end
	end

	def get_text
		if @correct
			print "Please enter text:"
			@text = gets.chomp
			
		end

	end

	def show_options
		if @correct
			puts "select option below"
			

			puts "1. Count words"
			puts "2. Count letter"
			puts "3. Reverse text"
			puts "4. Uppercase"
			puts "5. Lowercase"

			@options = gets.chomp

			case @options
			when "1"
				text_array = @text.split
				puts "There are #{text_array.length} words."
				
			when "2"
				@text = @text.gsub(" ", "")
				 puts "There are #{@text.length}"

			when "3"
				puts "the reverse is #{@text.reverse}"

			when "4"
				puts "the Uppercaseis #{@text.upcase}"

			when "5"
				puts "the Lowercase is #{@text.downcase}"
			else

			puts "error message"	



			end
		end

		
	end
end


my_command = CommandLine.new
my_command.get_entry
my_command.check_entry
my_command.get_text
my_command.show_options


