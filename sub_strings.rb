# frozen_string_literal: true

def substrings(text, substrings)
  substrings.each_with_object({}) do |substring, hash|
    count = text.scan(/#{substring}/i).length
    hash[substring] = count if count.positive?
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
