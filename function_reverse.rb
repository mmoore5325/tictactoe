
def reverse
a = gets.chomp.to_s
b = a.length
c = []
reversefunction(a, b, c)
end

def reversefunction(a, b, c)
if b >= 1
	b = b - 1
	c << a[b]
	puts "#{b}"
	reversefunction(a, b, c)
	puts "#{c}"
end

end
	reverse
