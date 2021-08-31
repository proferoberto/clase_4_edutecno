require 'csv'
# contenido = File.read("clientes2.csv")
# lineas = contenido.split("\n")

# pp lineas
# mejores_clientes = []
# lineas.each do |line|
#   columnas = line.split(",")
# 	if columnas.last.to_i > 9200
# 		mejores_clientes.push({nombre: columnas[0], email: columnas[1], puntos: columnas[2].to_i})
# 	end
# end
# puts "="*20
# puts "Mejores Clientes"
# puts "="*20
# pp mejores_clientes

# def best_clients
# 	filename = "clientes.csv"
# 	clients = []
# 	File.foreach(filename) do |line|
# 		column = line.split(",")
# 			if column.last.to_i > 9200
# 				clients.push({nombre: column[0], email: column[1], puntos: column[2].to_i})
# 			end
# 	end
# 	clients
# end

# puts "Estos son mis mejores clientes"
# pp best_clients
filename = "clientes.csv"
clientes = []
CSV.foreach(filename, headers: true, header_converters: :symbol)do |row|
	clientes.push(row.to_h)
end

pp clientes