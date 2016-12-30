require 'test_helper'
require 'putsplus'
include Putsplus

class PutsplusTest < Minitest::Test

 	def test_that_it_has_a_version_number
    	refute_nil ::Putsplus::VERSION
  	end

  	def test_function_calls_error_free
  		linebr
  		nputs nil
  		nputs "not nil"
  		tputs "test"
  		tputs "1", "2", "3", "4"
	end
end
