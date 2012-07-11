require 'daud_coder'

describe DaudCoder::DaudDecoder do
  
  before :each do 
    @decoder = DaudCoder::DaudDecoder.new
  end
  
  it "converts ASCII to itself" do 
    @decoder.decode("abc").should eq("abc")
  end
  
  it "converts just an encoding to unicode" do
    @decoder.decode("{a'}").should eq("\u00E1")
    @decoder.decode("{'e}").should eq("\u00E8")
  end
  
  it "converts an embedded encoding to unicode" do
    @decoder.decode("{AE}thelmearc").should eq("\u00C6thelmearc")
    @decoder.decode("caf{e'}").should eq("caf\u00E9")
  end
  
  it "converts multiple encodings to unicode" do
    @decoder.decode("Aeda Dam{a'}in, r{i'}g Iarmuman").should eq("Aeda Dam\u00E1in, r\u00EDg Iarmuman")
  end
  
  it "converts unknown encodings to iteself" do
    @decoder.decode("A{xx}b").should eq("A{xx}b")
  end
end