contenido = File.read("clientes2.csv")
lineas = contenido.split("\n")

pp lineas
mejores_clientes = []
lineas.each do |line|
  columnas = line.split(",")
	if columnas.last.to_i > 9200
		mejores_clientes.push({nombre: columnas[0], email: columnas[1], puntos: columnas[2].to_i})
	end
end
puts "="*20
puts "Mejores Clientes"
puts "="*20
pp mejores_clientes