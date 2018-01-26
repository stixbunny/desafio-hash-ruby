#1
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.each { |producto, valor| puts producto }
#2
productos['cereal'] = 2200
print "#{productos}\n"
#3
productos['bebida'] = 2000
print "#{productos}\n"
#4
productos_array = productos.to_a
print "#{productos_array}\n"
#5
productos.delete('galletas')
print "#{productos}\n"
