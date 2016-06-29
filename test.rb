require_relative 'arbol'

a = ArbolBinario.new(1,ArbolBinario.new(12,ArbolBinario.new(10,ArbolBinario.new(9)),ArbolBinario.new(0)),ArbolBinario.new(7,ArbolBinario.new(2)))
c = lambda {|x| x.valor>1}
nodos = a.recoger(c)
puts nodos

r = ArbolRosa.new(1,ArbolRosa.new(2,ArbolRosa.new(3),ArbolRosa.new(4),ArbolRosa.new(5)),
                    ArbolRosa.new(10),ArbolRosa.new(4))

r = ArbolRosa.new(2)
par = lambda {|x| x.valor.even?}
puts
puts r.recoger(par)