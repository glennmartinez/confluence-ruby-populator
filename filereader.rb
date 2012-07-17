

# f = File.open('names.txt').each_line do |line|
# s = f.gets

# puts s

# def fileread

# 	File.open('names.txt', 'r') do |f|
#   		puts f.readline while f
#   		# File.close
# 	end     

# end


# fileread
# puts name, job


f = File.open('names.txt')
a = f.readlines
puts a[2]


a.each do |names|

print names
print "\n"

end