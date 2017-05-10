RE = /\d{4}-\d{3}-\d{3}/
class Codeacamp
  def initialize(string)
  	@string = string
  end
  def value
    @string =~ RE ? true : false
  end
  def string
    @string =~ RE ?	@string.to_enum(:scan, /\d{4}-\d{3}-\d{3}/).map {Regexp.last_match.to_s}.join : nil
  end
  def array
  	@string.to_enum(:scan, /\d{4}-\d{3}-\d{3}/).map {Regexp.last_match.to_a.join}
  end
  def gsub 
    @string.to_enum(:scan, /\d{4}-\d{3}-\d{3}/).map {Regexp.last_match.to_s}.join.gsub /(\d{4})-(\d{3})-(\d{3})/, 'XXXX-XXX-\3'
  end
  def super_gsub
    valor_sin_espacio = @string.to_enum(:scan, /\d{4}-\d{3}-\d{3}/).map {Regexp.last_match.to_s}.join.gsub(".","")
    valor_sin_espacio.sub /(\d{4})(\d{3})(\d{3})/, '\1-\2-\3'
  end
end
test1 = Codeacamp.new("El Cliente con el número de cuenta 1234-123-120 se encuentra en proceso de revisión de sus documentos")
p test1.value
p test1.string
p test1.array
p test1.gsub
p test1.super_gsub
puts
test2 = Codeacamp.new("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos")
p test2.value
p test2.string
p test2.array
p test2.gsub
p test2.super_gsub
puts 
test3 = Codeacamp.new("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311")
p test3.value
p test3.string
p test3.array
p test3.gsub
p test3.super_gsub