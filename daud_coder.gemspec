Gem::Specification.new do |s|
  s.name = 'daud_coder'
  s.version = '1.0.0'
  s.executables << 'parse_daud'
  s.executables << 'to_daud'
  s.date = '2012-07-16'
  s.summary = "Da'ud notation encoder"
  s.description = "Encodes and decodes between standard text encoders and Da'ud notation."
  s.authors = ["Kathy Van Stone"]
  s.email = 'elsbeth@pobox.com'
  s.files = ['lib/daud_coder.rb', 'lib/daud_coder/encodings.rb', 'lib/daud_coder/daud_encoder.rb', 'lib/daud_coder/daud_decoder.rb', 'bin/parse_daud', 'bin/to_daud']
  s.homepage = 'http://github.com/kathyvs/DaudEncoder'
end