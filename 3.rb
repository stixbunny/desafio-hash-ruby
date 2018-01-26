h = {"x": 1, "y":2}
#1
h[:z] = 3
print "#{h}\n"
#2
h[:x] = 5
print "#{h}\n"
#3
h.delete(:y)
print "#{h}\n"
#4
if h.key?(:z)
  puts "yeeah"
end
#5
h2 = h.invert
print "#{h2}\n"
