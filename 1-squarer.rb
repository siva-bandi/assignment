def squarer(arr)
	arr.map { |e| e * e }
end

puts "Enter integers separated by space"
input = gets
arr = input.split(' ')
arr = arr.collect { |e| e.to_i }
puts squarer(arr)