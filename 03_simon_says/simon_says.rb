def echo(text)
	text
end

def shout(s)
	s.upcase
end

def repeat(r, times = 2)
	([r] * times).join(" ")
end

def start_of_word(s, n)
	s[0...n]
end

def first_word(f)
	f.split(" ").first
end

def titleize(t)
	words = t.split.map do |word|
		if %w(the and over).include?(word)
			word
		else
			word.capitalize
		end
	end
	words.first.capitalize!
	words.join(" ")
end