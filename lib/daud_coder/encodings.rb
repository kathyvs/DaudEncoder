# encoding: UTF-8

class DaudCoder::Encodings
  
  PAIRS = [["a'", "á"],
           ["'a", "à"],
           ["a^", "â"],
           ["AE", "Æ"],
           ["C,", "Ç"],
           ["'e", "è"]]

  def self.daud_to_unicode_map
    result = {}
    PAIRS.each do |d, u|
      result[d] = u
    end
    puts result
    result    
  end
  
  def self.unicode_to_daud_map
    result = {}
    PAIRS.each do |d, u|
      result[u] = d
    end
    result
  end
end