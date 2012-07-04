#
# Converts a string with Da'ud notation into a unicode string
#
require 'daud_coder/encodings'
class DaudCoder::DaudDecoder

  def daud_map
    @@daud_map ||= DaudCoder::Encodings.daud_to_unicode_map 
  end
  
  def target_encoding
    @@encoding ||= Encoding.default_internal || Encoding.find("UTF-8")
  end
  
  def decode(s)
    m = /\{(..)\}/.match(s)
    return s.encode(target_encoding) unless m
    daud_map[m[1]] || s
  end
  
end