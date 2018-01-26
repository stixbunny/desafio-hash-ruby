inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
quit = false

def agregar(item, inventario)
  inventario[item[0].to_sym] = item[1].to_i
  puts "Se agrego exitosamente!"
end

def eliminar(item, inventario)
  inventario.delete(item[0].to_sym)
  puts "Se elimino exitosamente!"
end

def actualizar(item, inventario)
  inventario[item[0].to_sym] = item[1].to_i
  puts "Se actualizo exitosamente!"
end

def stock_total(inventario)
  print "El inventario es:\n#{inventario}\n"
  suma = inventario.inject(0) do |sum, item|
    sum + item[1]
  end
  puts "El stock total es: #{suma}"
end

def mayor_stock(inventario)
  puts "El item con mayor stock es: #{inventario.max_by{|k,v| v}[0]}"
end

def existe(item, inventario)
  if inventario.key?(item[0].to_sym)
    puts "Si existe!"
  else
    puts "No existe!"
  end
end

while !quit
  print "Bienvenido al menu:\n\t1) Agregar item\n\t2) Eliminar item\n\t3) Actualizar item\n\t4) Ver stock\n\t5) Más alto stock\n\t6) Existe item\n\t7) Salir\n"
  input = gets.chomp.to_i
  case input
  when 1
    puts "Agrega un item ingresando con el formato [Nombre, Unidades]"
    respuesta = gets.chomp
    agregar(respuesta.split(', '), inventario)
  when 2
    puts "Elimina un item ingresando con el formato [Nombre]"
    respuesta = gets.chomp
    eliminar(respuesta.split(', '), inventario)
  when 3
    puts "Actualiza un item ingresando con el formato [Nombre, Unidades]"
    respuesta = gets.chomp
    actualizar(respuesta.split(', '), inventario)
  when 4
    stock_total(inventario)
  when 5
    mayor_stock(inventario)
  when 6
    puts "Verifica si un item existe ingresando con el formato [Nombre]"
    respuesta = gets.chomp
    existe(respuesta.split(', '), inventario)
  when 7
    quit = true
  end
end
