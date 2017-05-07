loop do 
	class Codeacamp
		attr_accessor :nombre,:edad
		def initialize(nombre,edad)
			@nombre = nombre
			@edad = edad
		end
		def acciones(respuesta)
			if respuesta == "Mayusculas"
				puts @nombre.upcase
			elsif respuesta == "MAYUSCULAS"
				puts @nombre.upcase!
			else 
				"Selecciona una opcion"
			end
		def print
			puts "#{@nombre} tienes #{@edad} años"
		end
		end
	end
	puts "Escribe tu Nombre y despues tu edad"
	prueba1 = Codeacamp.new(gets.chomp,gets.chomp)
	puts "Si quieres cambiar tu nombre a MAYUSCULAS por siempre escribe 'MAYUSCULAS' o 'Mayusculas' para cambiarlo una vez"
	prueba1.acciones(gets.chomp)
	puts "Asi quedo tu nombre"
	prueba1.print
	puts "¿Quierse hacerlo de nuevo?"
	respuesta = gets.chomp
	respuesta == "Si" ? "vamos de nuevo" : break
end