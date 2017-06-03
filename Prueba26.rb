loop do 
class Board
  @@boards_templates =  [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"],
                        [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"],
                        [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
def initialize(nmro_tablero)
  @nmro_tablero = nmro_tablero - 1
  @board =  @@boards_templates[@nmro_tablero][1].scan(/...../)
  @@contador_horizontal = 0
  @@contador_vertical = 0
  @@contador_diagonal = 0
end
def board
  @board
end
def to_s
  complete_board!.scan(/...../)
end
def analisar_palabras
  analisis_horizontal
  analisis_vertical
  analisis_diagonal
  @@contador_horizontal + @@contador_vertical + @@contador_diagonal == 4 ? "Felicidades, todas las palabras fueron encontradas" : "No todas las palabras fueron encontradas"
end
  private
def analisis_horizontal
  @@boards_templates[@nmro_tablero][0].each do |initial_word|
    @board.map do |each_line|
      each_line.match(initial_word) || each_line.reverse.match(initial_word) ? @@contador_horizontal += 1 : nil 
    end
  end
@@contador_horizontal 
end
def analisis_vertical
palabras_horizontal = Array.new
  y = 0
  5.times{@board[0..7].map {|i| palabras_horizontal << i[y]};y += 1}
    @@boards_templates[@nmro_tablero][0].each do |initial_word|
      palabras_horizontal.join.scan(/......../).map do |each_line|
      each_line.match(initial_word) || each_line.reverse.match(initial_word) ? @@contador_vertical += 1 : nil  
      end
    end
  @@contador_vertical 
end
def analisis_diagonal
  contador = []
  vertical = Array.new
  (0..3).each do |q|
    5.times{|x| vertical << @board.reverse[x+(q)][x]}
  end
@@boards_templates[@nmro_tablero][0].each do |palabras|
  vertical.join.match(palabras) ? @@contador_diagonal += 1 : nil
end
@@contador_diagonal
end
def complete_board!
  @array = []
  @@boards_templates[@nmro_tablero][1].each_char{|i| i == "X" ? @array << ("A".."Z").map {|e| e}.sample  : @array << i}
  @array.join
end
end
p "Bienvenido a este juego de 'Sopa de letras'"
print "\n"
p "Antes que nada elije un tablero, hay del 1 al 3"
print "\n"
p "Que tablero elijes?"
tablero = gets.chomp
print "\n"
p "Que buena eleccion, ahora elije tus opciones"
print "\n"
board = Board.new(tablero.to_i) 
loop do
  print "Opciones:" "\n" "1: Mostrar la sopa de letras a realizar" "\n" "2: Analizar que se encuentren todas las palabras" "\n" "3: Mostar la sopa de letras resuelta" "\n" "4: Cambiar de tablero/salir "
  print "\n"
  respuesta = gets.chomp
    if respuesta.to_i == 1; puts board.to_s
    elsif respuesta.to_i == 2; p board.analisar_palabras
    elsif respuesta.to_i == 3; puts board.board 
    elsif respuesta.to_i == 4; break
    end
  end
p "Quieres volver a jugar('y' para volvera jugar /cualquier tecla para cerrar?"
respuesta2 = gets.chomp
respuesta2 == "y" ? "vamos alla" : break 
end

