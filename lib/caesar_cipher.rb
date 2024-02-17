# frozen_string_literal: true

def caesar_cipher(string, shift_factor)
  string.each_char.reduce("") do |cipher, char|
    shifted = char.ord + shift_factor
    cipher +
      case char.ord
      when 65..90
        (shifted.between?(65, 90) ? shifted : shifted - 26).chr
      when 97..122
        (shifted.between?(97, 122) ? shifted : shifted - 26).chr
      else
        char
      end
  end
end
