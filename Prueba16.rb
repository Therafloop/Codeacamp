 
class Codeacamp
  attr_accessor :nombre,:edad
    def initialize(nombre,edad)
	  @nombre = nombre
	  @edad = edad
	end	
	def no_destructivo
	  puts @nombre.upcase
	end
	def destructivo
	  puts @nombre.upcase!
	end
	def print
	  puts "#{@nombre} tienes #{@edad} años"
	end
  end
	prueba1 = Codeacamp.new("Juan Felipe Gudiño",17)
	prueba1.no_destructivo
	prueba1.print
	prueba1.destructivo
	prueba1.print