class Book
	attr_accessor :title

	def title=(new_title)
		separate_words = new_title.split(" ")
		separate_words.each do |word|
			words_to_ignore = ["and", "or", "the", "a", "an", "in", "the", "of"]
			if words_to_ignore.include? word
				word
			else
				word.capitalize!
			end
		end
		separate_words[0].capitalize!
		@title = separate_words.join(" ")
	end
end