# encoding: UTF-8

class DaudCoder::Encodings
  
  PAIRS = [["a'", 'á'],
           ["'a", 'à'],
           ['a^', 'â'],
           ['a"', 'ä'],
           ["A'", 'Á'],
           ['AE', 'Æ'],
           ['C,', 'Ç'],
           ["'e", 'è'],
           ["e'", 'é'],
           ['n~', 'ñ'],
           ["'o", "ò"]]

  def self.daud_to_unicode_map
    Hash[PAIRS]
  end
  
  def self.unicode_to_daud_map
    Hash[PAIRS.map {|d, u| [u, d]}]
  end
end