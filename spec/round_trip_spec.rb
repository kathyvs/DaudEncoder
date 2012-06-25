DAUD_STRINGS = [
  'plain',
  '{a:}'
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
end
