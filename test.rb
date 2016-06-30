require_relative 'trees'

a = ArbolBinario.new(1,ArbolBinario.new(12,ArbolBinario.new(10,ArbolBinario.new(9)),ArbolBinario.new(0)),ArbolBinario.new(7,ArbolBinario.new(2)))
puts "BFS Binario"
a.bfs {|x| puts x}

r = ArbolRosa.new(1,ArbolRosa.new(2,ArbolRosa.new(3),ArbolRosa.new(4),ArbolRosa.new(5)),
                    ArbolRosa.new(10),ArbolRosa.new(4))

#r = ArbolRosa.new(2)
puts "recoger pares Rosa"
par = lambda {|x| x.valor.even?}
puts r.recoger(par)
puts "DFS Rosa"
a.dfs {|x| puts x}