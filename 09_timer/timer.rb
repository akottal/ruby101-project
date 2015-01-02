class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end
	def padded(n)
		return n < 10 ? "0" + n.to_s : n.to_s
	end
	def time_string
		padded(@seconds/3600) + ":" + padded((@seconds%3600)/60) + ":" + padded((@seconds%3600)%60)
	end
end
