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
    result = ""
    until s.empty? do
      m = /\{(..)\}/.match(s)
      if (m)
        result << s[0..m.begin(0) - 1] unless m.begin(0) == 0
        result << (daud_map[m[1]] || m[0])
        s = s[m.end(0)..-1]
      else 
        result << s
        s = ""
      end
    end
    return result
  end
  
end