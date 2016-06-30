

if __FILE__ == $0
	
	def hola
		array= [1,[4],2,[5,2]]
		mitad= array.length / 2
		arrayAux=array.sort_by{rand}
		arrayAux[0..mitad-1]
	end

	puts hola

end