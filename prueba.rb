

if __FILE__ == $0
	
	def hola
		singular= "singular"
		newStr= ''
		"hegllo".each_char do |c| 
			if singular[c]==nil
				newStr+=c 
			else 
				newStr+= c.upcase
			end
		end
		newStr
	end

	puts hola

end