class Array
	def my_reverse()
		b = self.length
		c = []
		while b >= 1
			b = b - 1
			c << self[b]
		end
		c

	end

	def my_index(obj)
		result = nil
		self.each_with_index do |value, index|
			# arr << value
			if value == obj
				result = index
				# break
			end
		end
		result
	end



	# 	hash = Hash[self.map.with_index.to_a]
	# 		hash
		
	# end


	def find_values_index()
		

		myindex = self.each_with_index.inject(Hash.new {Array.new}) do |hash, (obj, i)|
			hash[obj] += [i]
			hash
		end
	end
end

			
		


	# def reverse(passed)
	# a = passed
	# b = a.length
	# c = []
	# reversefunction(a, b, c)
	# end

# 	def reversefunction(a, b, c)
	
# 		if b >= 1
# 			b = b - 1
# 			c << a[b]
# 			puts "#{b}"
# 			reversefunction(a, b, c)
# 			puts "#{c}"
# 		end	
# 	end
# end