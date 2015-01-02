def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, n = 2)
	i = 0
	arr = []
	while i < n
		arr.push(str)
		i = i+1
	end
	arr.join(' ')
end

def start_of_word(str, n)
	str[0..n-1]
end

def first_word(str)
	str.split(" ")[0]
end

def titleize(str)
	little_words = ["and", "or", "the", "over", "to", "the", "a", "but"]
	arr = str.split(" ")
	output = []
	arr.each_with_index do |item, index|
			if index == 0
                                output.push(item.capitalize)
                        else
                                if little_words.include?(item)
                                        output.push(item)
                                else
                                        output.push(item.capitalize)
                                end
                        end
	end
                output.join(" ")
end
