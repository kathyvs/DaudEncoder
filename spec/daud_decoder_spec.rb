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
end