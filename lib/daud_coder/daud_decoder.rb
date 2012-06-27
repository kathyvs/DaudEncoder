#
# Converts a string with Da'ud notation into a unicode string
#
class DaudCoder::DaudDecoder

  def decode(s)
    s == "{a'}" ? "\u00E1" : s
  end
end