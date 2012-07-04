# encoding: UTF-8
DAUD_STRINGS = [
  'plain',
  '{a:}'
]

UNICODE_STRINGS = [
  'plain', 
  "Æthelmearc"
]

require 'daud_coder'

describe DaudCoder do
  
  DAUD_STRINGS.each do |daud|
    it "roundtrips DAUD '#{daud}' properly" do
      inner = DaudCoder.from_daud daud
      back = DaudCoder.to_daud inner
      back.should eq(daud)
    end
  end
  
  UNICODE_STRINGS.each do |u|
    it "roundtrips UTF-8 string '#{u}' property" do
      daud = DaudCoder.to_daud u
      back = DaudCoder.from_daud daud
      back.should eq(u)
    end
  end
  
  UNICODE_STRINGS.each do |u|
    it "converts ISO-8859-1 string ''#{u}' to default encoding" do
      l = u.encode("ISO-8859-1")
      daud = DaudCoder.to_daud l
      back = DaudCoder.from_daud daud
      back.encoding.should eq("default".encoding)
      back.encode("ISO-8859-1").should eq(l)
    end
  end
end
