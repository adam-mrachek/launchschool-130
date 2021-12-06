ENCRYPTED_PIONEERS = [
  "Nqn Ybirynpr",
  "Tenpr Ubccre",
  "Nqryr Tbyqfgvar",
  "Nyna Ghevat",
  "Puneyrf Onoontr",
  "Noqhyynu Zhunzznq ova, Zhfn ny-Xujnevmzv",
  "Wbua Ngnanfbss",
  "Ybvf Unvog",
  "Pynhqr Funaaba",
  "Fgrir Wbof",
  "Ovyy Tngrf",
  "Gvz Orearef-Yrr",
  "Fgrir Jbmavnx",
  "Xbaenq Mhfr",
  "Fve Nagbal Ubner",
  "Zneiva Zvafxl",
  "Lhxvuveb Zngfhzbgb",
  "Unllvz Fybavzfxv",
  "Tregehqr Oynapu"
]

def decrypt(string)
  string.chars.map { |char| decypher_character(char) }.join
end

def decypher_character(character)
  case character
  when 'a'..'m', 'A'..'M' then (character.ord + 13).chr 
  when 'n'..'z', 'N'..'Z' then (character.ord - 13).chr 
  else                         character
  end
end

ENCRYPTED_PIONEERS.each do |pioneer|
  puts "#{decrypt(pioneer)}"
end