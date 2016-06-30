

if __FILE__ == $0
	
	def hola
		newStr= ''
		it= 1
		auxPar=''
		auxImpar=''
		"bRyu".each_char do |c| 
			if (it % 2) == 0
			    auxPar+=  c 
			else
			    auxImpar+=  c 
			end
			it+=1
		end
		newStr=auxPar+auxImpar
	end

	puts hola

end