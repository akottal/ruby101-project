def translate(input)
	output = []
	vowels = ['a', 'e', 'i', 'o', 'u']
	arr = input.split(" ")
	arr.each do |str|
		if vowels.include?(str[0])
			output.push([str, "ay"].join(""))
		else
			i = 0
			while i < str.length
				if str[i] == 'q' and str[i.next] == 'u'
					i = i.next.next
				end
				if vowels.include?(str[i])
					break
				end
				i = i.next
			end
				output.push([str[i,str.length-1], str[0,i], "ay"].join(""))
		end
	end
	output.join(" ")
end
