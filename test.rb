require_relative 'trees'
require_relative 'nodos'

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

puts "FixNum Singular"
a = Singular
puts a.mutar_fixnum(487) == 84
puts a.mutar_fixnum(1) == 1
puts a.mutar_fixnum(10) == 0
puts a.mutar_fixnum(11) == 1
puts a.mutar_fixnum(9) == 9
puts a.mutar_fixnum(100) == 0
puts a.mutar_fixnum(101) == 1
puts a.mutar_fixnum(875) == 75
puts a.mutar_fixnum(0) == 0
puts
puts "FixNum Uniforme"
a = Uniforme
puts a.mutar_fixnum(487) == 6
puts a.mutar_fixnum(1) == 1
puts a.mutar_fixnum(10) == 0
puts a.mutar_fixnum(11) == 1
puts a.mutar_fixnum(9) == 9
puts a.mutar_fixnum(111) == 1
puts a.mutar_fixnum(100) == 0
puts a.mutar_fixnum(101) == 0
puts a.mutar_fixnum(875) == 6
puts a.mutar_fixnum(0) == 0
puts
puts "FixNum Oscuro"
a = Oscuro
puts a.mutar_fixnum(487) == 47
puts a.mutar_fixnum(1) == 1
puts a.mutar_fixnum(10) == 0
puts a.mutar_fixnum(11) == 1
puts a.mutar_fixnum(9) == 9
puts a.mutar_fixnum(111) == 11
puts a.mutar_fixnum(100) == 10
puts a.mutar_fixnum(101) == 11
puts a.mutar_fixnum(875) == 85
puts a.mutar_fixnum(0) == 0
puts a.mutar_fixnum(68456) == 646
