module Putsplus
	#
	# Sticks text to last line in console
	#	
	class Footer
		attr_reader :thread
		attr_accessor :text

		def initialize(text = "")
		@text = text
		@thread = Thread.new {
			loop do
				sticky_footer @text
			end
		}
		end

		def kill
			print " " * `tput cols`.to_i
			$stdout.flush
			Thread.kill(@thread)
		end

		def sticky_footer text
			print text.to_s + "\r"
			$stdout.flush
		end

		def alive?
			@thread.alive?
		end
	end
end
