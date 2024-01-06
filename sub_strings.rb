def substrings(text, substrings)
  substrings.reduce({}) do |hash, substring|
    count = text.scan(/#{substring}/i).length
    hash[substring] = count if count > 0
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)