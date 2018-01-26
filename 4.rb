personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
#1
a = personas.zip(edades).to_h
print "#{a}\n"
#2
def avg_age(hash)
  suma = hash.inject(0) do |sum, edad|
    sum + edad[1]
  end
  return suma / hash.count.to_f
end
puts avg_age(a)
