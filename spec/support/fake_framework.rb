require "#{File.dirname(__FILE__)}/test_io_streams.rb"

class FakeFramework < Spork::TestFramework
  include TestIOStreams

  attr_accessor :wait_time
  DEFAULT_PORT = 1000

  HELPER_FILE = "#{SPEC_TMP_DIR}/fake/test_helper.rb"

  def run_tests(argv, input, output)
    sleep(@wait_time || 0.5)
    true
  end
end
