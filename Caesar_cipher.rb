require 'sinatra'
require 'sinatra/reloader'

get '/' do
	def caesar(str, shift)
		str_split = str.split("").map do |letter|
			ordinal = letter.ord - shift
			ordinal.chr
		end
		puts str_split.join
	end
end