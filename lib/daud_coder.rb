module DaudCoder
  
  def self.from_daud(s)
    decoder.decode(s)
  end
  
  def self.to_daud(s)
    encoder.encode(s)
  end
  
  def self.decoder
    @@decoder ||= DaudDecoder.new
  end
  
  def self.encoder
    @@encoder ||= DaudEncoder.new
  end
end

require "daud_coder/daud_decoder"
require "daud_coder/daud_encoder"
