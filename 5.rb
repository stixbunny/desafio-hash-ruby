meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
hash = meses.zip(ventas).to_h
print "#{hash}\n"
#1
print "#{ hash_invertido = hash.invert}\n"
#2
print "#{hash_invertido.max_by{|k,v| k}[1]}"
