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
people = []
puts "¿Cuantas personas quieres crear?"
personas = gets.chomp
personas.to_i.times do
  people << test.first_name
  people << test.last_name
  people << test.email
  people << test.phone
  people << test.created_at
  end

class PersonWriter
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
person_writer = PersonWriter.new("people.csv", people)
person_writer.create_csv

class PersonParser
  def initialize (name)
    @name = name
  end
  def people
    CSV.foreach (@name) do |row| 
      p row
  end
end
end
parser = PersonParser.new('people.csv')
people = parser.people