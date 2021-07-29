

def print_pattern(limit)
	limit.times do |i|
		 (limit - i).times { |j| print '' }
		 i.times { |j| print '*' }
		 puts "" 
	end

	limit.times do |i|
		 (limit - i).times { |j| print '*' }
		 i.times { |j| print '' }
		 puts "" 
	end
end

puts "Enter a limit"
print_pattern(gets.to_i)
