#No hay necesidad de generar métodos getter para cada atributo, recuerda que afuera de
#la clase funcionan como métodos que pueden ser leídos o modificados

require 'faker'
require 'csv'
class Person
 attr_accessor :first_name,:last_name,:email,:phone,:created_at
 
 #Cada vez que se crea una instancia tenemos objetos persona con datos generados por faker

 def initialize(first_name=Faker::Name.first_name, last_name=Faker::Name.last_name, email=Faker::Internet.free_email("#{first_name}"), phone=Faker::PhoneNumber.cell_phone, created_at=Faker::Date.backward(20))
   @first_name = first_name
   @last_name = last_name
   @email = email
   @phone = phone
   @created_at = created_at
 end

end

def people(number)
    array_of_people =[] 
    number.times do
   array_of_people << Person.new
    end
    array_of_people
end

#Cuando indicas un número generas un array con determinado número de objetos people

 list = people(10)

#Lo que regresa el método es arreglo que tiene objetos de la clase person
 
class Escritor
  def initialize (name, array)
    @name = name
    @array = array
  end

def createcsv
  CSV.open(@name,'a+') do |csv|
    @array.each do |person|
      csv << [person.first_name, person.last_name, person.phone, person.email, person.created_at]
    end
  end
end
end

escritor = Escritor.new("people.csv", list)
escritor.createcsv

class LectorDePersona
 def initialize (name)
   @name = name
 end
 def people
     new_array = []
   CSV.foreach (@name) do |row|
     new_array << Person.new(row[0], row[1], row[2], row[3], row[4])
   end
   new_array
 end
end
lector_de_persona = LectorDePersona.new('people.csv')
p lector_de_persona.people