# mod_fold.rb
# 
# Modulo que implementa el metodo fold, que utiliza un recorrido en bfs
#
module Fold
	def dfs
		self.each do |i|
			i.dfs
		end
		yield self.valor
	end
end