# encoding: UTF-8

class DaudCoder::Encodings
  
  PAIRS = [["a'", "á"],
           ["'a", "à"],
           ["AE", "Æ"],
           ["'e", "è"]]

  def self.daud_to_unicode_map
    result = {}
    PAIRS.each do |d, u|
      result[d] = u
    end
    puts result
    result    
  end
end