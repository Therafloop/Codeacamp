def Pig_latin(str)
  longitud_string = str[0..((str =~ /[aeiou]/i) - 1)].size
  str = str.split.each_slice(1).map{|a|
  str = a.join ' '
    case
      when /[aeiou]/i.match(str.chr) then str + "way"
      when longitud_string == 1 then (str.sub /[^aeiou]/i,'') + str.chr + "ay"
      when longitud_string > 1 then str.gsub(str[0..(longitud_string -1)],"") + str[0..(longitud_string -1)]+ "ay"
    end
}.join " "
  end
ARGV.to_a.map{|palabras| print "#{Pig_latin(palabras)} " }
