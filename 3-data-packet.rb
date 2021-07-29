require 'json'

class DataPacket
	def array_data=(array_data)
		@array_data = array_data
	end
	
	def array_data
		@array_data.split(',')
	end

	def hash_data=(hash_data)
		@hash_data = hash_data
	end
	
	def hash_data
		JSON.parse(@hash_data)
	end
end

d = DataPacket.new
d.array_data = '1,2,3,4'

puts d.array_data

d.hash_data = '{ "a": "b", "c": "d"}'
puts d.hash_data
