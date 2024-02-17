# frozen_string_literal: true

require "./lib/caesar_cipher"

describe "#caesar_cipher" do
  it "shifts all lower case word by 1 character" do
    expect(caesar_cipher("bunny", 1)).to eql("cvooz")
  end

  it "shift all capital letters word by 2 characters" do
    expect(caesar_cipher("COBRA", 2)).to eql("EQDTC")
  end

  it "leaves non-alphabetic characters the same" do
    expect(caesar_cipher("1.-_!?'\"", 7)).to eql("1.-_!?'\"")
  end

  it "Encodes a word with different cases and symbols" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end
end
