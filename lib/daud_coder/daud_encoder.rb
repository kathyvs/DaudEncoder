#
# Converts a regular unicode string to Da'ud notation ASCII.
#
class DaudCoder::DaudEncoder
  
  def daud_map
    @@daud_map ||= DaudCoder::Encodings.unicode_to_daud_map
  end
  def encode(s)
    result = ""
    s.chars do |c|
      result << (daud_map.has_key?(c) ? "\{#{daud_map[c]}\}" : c)
    end
    return result
  end
end