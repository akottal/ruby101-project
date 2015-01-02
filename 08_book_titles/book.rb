class Book
	def title=(str)
		restricted = ["a", "an", "the", "and", "in", "of"]
		arr = str.split(" ")
		output = []
		arr.each_with_index do |item, index|
			if index == 0
                                output.push(item.capitalize)
                        else
                                if restricted.include?(item)
                                        output.push(item)
                                else
                                        output.push(item.capitalize)
                                end
                        end
		end
		@str = output.join(" ")
		
	end
	def title
		@str
	end
end
