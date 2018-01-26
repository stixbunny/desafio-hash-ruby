restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
#1
puts restaurant_menu.max_by {|key, value| value}[0]
#2
puts restaurant_menu.min_by {|key, value| value}[0]
#3
suma = restaurant_menu.inject(0) do |sum, (nombre, valor)|
  sum + valor
end
puts "El promedio de los platos es: #{suma.to_f / restaurant_menu.count}"
#4
nombres = []
restaurant_menu.each do |nombre, valor|
  nombres.push(nombre)
end
print "#{nombres}\n"
#5
valores = []
restaurant_menu.each do |nombre, valor|
  valores.push(valor)
end
print "#{valores}\n"
#6
restaurant_menu.each do |nombre, valor|
  restaurant_menu[nombre] = valor * 1.19
end
print "#{restaurant_menu}\n"
#7
restaurant_menu.each do |nombre, valor|
  if nombre.length > 1
    restaurant_menu[nombre] = 0.8 * valor
  end
end
print "#{restaurant_menu}\n"
