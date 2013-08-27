begin
  require 'turn/autorun'
  Turn.config.format = :progress
rescue LoadError
  require 'minitest/autorun'
end
