require 'daud_coder'

describe DaudCoder::DaudEncoder do
  
  before :each do 
    @encoder = DaudCoder::DaudEncoder.new
  end
  
  it "converts ASCII to itself" do 
    @encoder.encode("def").should eq("def")
  end
  
  it "converts just a unicode character to an encoding" do
    @encoder.encode("\u00E0").should eq("{'a}")
    @encoder.encode("\u00C7").should eq("{C,}")
  end
  
  it "converts an embedded unicode to encoding" do
#    @encoder.encode("{AE}thelmearc").should eq("\u00C6thelmearc")
#    @encoder.encode("caf{e'}").should eq("caf\u00E9")
  end
end