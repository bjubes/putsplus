require "putsplus/version"

module Putsplus
	#
	#Puts only if obj is not null
	#
	# Arguments:
	# 	 obj: the obj that will be puts if it isn't null
	# 	 prefix: obj to append to the puts if obj isn't null
	#
	def nputs obj, prefix = nil
		puts prefix.to_s +  obj.to_s unless obj.nil?
	end


	#
	#Puts each parameter with a tab inbetween each 
	#
	def tputs *obj
		out = ""
		obj.each_with_index do |o, index|
			s = o.to_s
			s += "\t" unless index == obj.size - 1
			out << s			
		end
		puts out
	end

	#
	#Puts a line break with given character and length
	#
	#Arguments:
	#   num: number of times to repeat the given character. Default is 6.
	#   char: the character or string to repeat. Default is '-'
	#
	def linebr num = 6, char = '-'
		raise Exeception, "num must be an Integer" unless is_int?(num)
		raise Exeception, "char must be an Character or String" unless (is_string? char)

		puts char * num
	end

	#
	#Puts the string given and then underlines it with the character provided
	#Arguments:
	#   String: the string to puts
	#   Char: the char used to underline the string. Defaults to '-'
	#
	def underline string, char = '-'
		puts string
		linebr string.length, char
	end
	
	#PRIVATE VARS
	private 

	def is_int? obj
		true if Integer(obj) rescue false
	end

	def is_string? obj
		true if String(obj) rescue false
	end
end
