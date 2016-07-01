require_relative 'trees'
require_relative 'nodos'

a = ArbolBinario.new("bRyu",
                ArbolBinario.new("se",
                    ArbolBinario.new("nu")
                ),
                ArbolBinario.new("ulaejneg",
                    nil,
                    ArbolBinario.new("imcáog")
                )
            )
puts "BFS Binario"
a.bfs {|x| puts x}

r = ArbolRosa.new(1,ArbolRosa.new(2,ArbolRosa.new(3),ArbolRosa.new(4),ArbolRosa.new(5)),
                    ArbolRosa.new(10),ArbolRosa.new(4))

#r = ArbolRosa.new(2)
puts "recoger pares Rosa"
par = lambda {|x| x.valor.even?}
puts r.recoger(par)
puts "DFS Rosa"
r.dfs {|x| puts x}

puts
puts "Fold"
puts r.fold(0) { |x,acc| x.valor + acc } == 29

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
puts a.mutar_array([1,2,3,4]) == "1 2 3 4"
puts a.mutar_array([[1],[[4]],1]) == "1 4 1"
puts a.mutar_string("Ruby")
puts a
puts "FixNum Uniforme"
puts
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
puts a.mutar_array([15]) == [3]
puts a.mutar_array([487,1,10,875])
puts a.mutar_string("Ruby")
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
puts a.mutar_array([25]) == [25]
puts a.mutar_array([487,11,101,875])
puts a.mutar_string("Ruby")


