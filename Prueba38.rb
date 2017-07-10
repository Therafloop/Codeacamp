require 'faker'
require 'csv'
class Person
def first_name
@name = Faker::Name.first_name
end
def last_name
Faker::Name.last_name
end
def email
  Faker::Internet.free_email("#{@name}")
end
def phone
  Faker::PhoneNumber.cell_phone
end
def created_at
  Faker::Date.backward(20)
end
end
test =  Person.new
persona = []
puts "¿Cuantas personas quieres crear?"
personas = gets.chomp
personas.to_i.times do
  persona << test.first_name
  persona << test.last_name
  persona << test.email
  persona << test.phone
  persona << test.created_at
  end

class EscritorDePersona
def initialize (name, array)
  @name = name
  @array =  array
end

def create_csv
CSV.open(@name,'wb') do |csv|
csv << ["first_name","last_name","Email","Phone","created_at"]
@array.each_slice(5) do |a|
csv << a 
end	
end
end
end
escritor_de_persona = EscritorDePersona.new("people.csv", persona)
escritor_de_persona.create_csv

class LectorDePersona
  def initialize (name)
    @name = name
  end
  def people
    CSV.foreach (@name) do |row| 
      p row
  end
end
end
lector_de_persona = LectorDePersona.new('people.csv')
lector = lector_de_persona.people