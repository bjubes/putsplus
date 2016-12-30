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

	def test_footer_manually	
		footer = Footer.new("inital text")
		10.times do |i|
		  sleep 0.1
		  puts "testing"
		  footer.text = i.to_s

		  	if ( i == 3)
				footer.kill
			end

			if (i == 6)
				puts "activate!!"
				footer = Footer.new
			end
		end
	end
end
