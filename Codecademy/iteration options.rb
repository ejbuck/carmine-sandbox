a = 1

while a <= 50
    print a
    a += 1
end

a = 1

until a > 50
    print a
    a += 1
end

#a = 1

#while a <= 50
#   print a
#   a += 1
#end

#until a > 50
#    print a
#    a += 1
#end

for a in 1..50
    print a
end

counter = 1
loop do
  counter += 1
  print "Ruby!"
  break if counter > 30
end

30.times {print "Ruby!"}
