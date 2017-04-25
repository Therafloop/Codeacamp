2 + 3
["hola","adios","hasta_luego"].each {|x| puts x }
banana = 0
loop do
  banana += 1
  puts "un platano como #{banana} banana"
  break if banana == 5
end
monkeys = "Monos locos"
monkeys.upcase!
p monkeys
p Math.sqrt(5)
def shout(string)
	string.upcase
end
p shout("hola")

#Me guie por esos ejercicios y el codigo de la consola irb es el sig:
C:\Users\Jose Pablo-PC>irb
irb(main):001:0> 2 + 3
=> 5
irb(main):002:0> ["hola","adios","hasta_luego"].each {|x| puts x }
hola
adios
hasta_luego
=> ["hola", "adios", "hasta_luego"]
irb(main):003:0> banana = 0
=> 0
irb(main):004:0> loop do
irb(main):005:1*   banana += 1
irb(main):006:1>   puts "un platano como #{banana} banana"
irb(main):007:1>   break if banana == 5
irb(main):008:1> end
un platano como 1 banana
un platano como 2 banana
un platano como 3 banana
un platano como 4 banana
un platano como 5 banana
=> nil
irb(main):009:0> monkeys = "Monos locos"
=> "Monos locos"
irb(main):010:0> monkeys.upcase!
=> "MONOS LOCOS"
irb(main):011:0> monkeys
=> "MONOS LOCOS"
irb(main):012:0> Math.sqrt(5)
=> 2.23606797749979
irb(main):013:0> def shout(string)
irb(main):014:1> string.upcase
irb(main):015:1> end
=> :shout
irb(main):016:0> shout("hola")
=> "HOLA"
irb(main):017:0>