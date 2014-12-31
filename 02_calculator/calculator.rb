def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	i = 0
	sum = 0
	arr.each do |i|
		sum = sum + i
	end
	sum
end

def multiply(arr)
	product = 1;
	arr.each do |i|
		product = product * i;
	end
	product
end

def power(a,b)
	if b == 0
		a
	else
		i = 0
		ans = 1
		while i < b
			ans = ans * a
			i = i + 1
		end
		ans
	end
end

def factorial(n)
	if n == 0 or n == 1
		1
	else
		n * factorial(n-1)
	end
end
