def Pig_latin(str)
  longitud_string = str[0..((str =~ /[aeiou]/i) - 1)].size
    case
      when /[aeiou]/i.match(str.chr) then str + "way"
      when longitud_string == 1 then (str.sub /[^aeiou]/i,'') + str.chr + "ay"
      when longitud_string > 1 then str.gsub(str[0..(longitud_string -1)],"") + str[0..(longitud_string -1)]+ "ay"
    end
  end
p Pig_latin("Trash") == "ashTray"
p Pig_latin("glove") == "oveglay"
p Pig_latin("happy") == "appyhay"
p Pig_latin("egg") == "eggway"
p Pig_latin("apple") == "appleway"