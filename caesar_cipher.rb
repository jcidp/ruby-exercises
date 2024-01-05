def caesar_cipher(string, shift_factor)
  cipher = ""
  string.each_char do |char| 
    if !char.ord.between?(65,90) & !char.ord.between?(97,122)
      cipher += char
    elsif char.ord.between?(65,90) && !(char.ord + shift_factor).between?(65,90) || char.ord.between?(97,122) && !(char.ord + shift_factor).between?(97,122)
      cipher += (char.ord + shift_factor - 26).chr
    else
      cipher += (char.ord + shift_factor).chr
    end
  end
  cipher
end

p caesar_cipher("What a string!", 5)
