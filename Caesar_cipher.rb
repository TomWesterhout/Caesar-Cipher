require 'sinatra'
if development?
	require 'sinatra/reloader'
end

get '/' do
	string = params['string']
	number = params['number'].to_i
	result = caesar(string, number)
	erb :index, :locals => {:result => result,
							:string => string,
							:number => number}
end

def caesar(str, shift)
	if str == nil
		return
	else	
		str_split = str.split("").map do |letter|
			ordinal = letter.ord - shift
			ordinal.chr
		end
		str_split.join
	end
end