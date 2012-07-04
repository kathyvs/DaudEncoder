#
# Converts a regular unicode string to Da'ud notation ASCII.
#
class DaudCoder::DaudEncoder
  
  def daud_map
    @@daud_map ||= DaudCoder::Encodings.unicode_to_daud_map
  end
  def encode(s)
    daud_map.has_key?(s) ? "\{#{daud_map[s]}\}" : s
  end
end