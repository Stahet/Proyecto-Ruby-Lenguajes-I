# mod_bfs.rb
#
# Modulo para recorrido en BFS
# 
# Autores : Jonnathan Ng
#           Joel Rivas

module BFS
    def bfs
        cola = []
        cola.unshift(self)
        while not cola.empty?
            nodo = cola.pop
            yield nodo
            nodo.each do |i|
                cola.unshift(i)
            end
        end
    end

    def recoger(pred)
        nodos = []
        bfs {|x| nodos.push(x) if pred.call(x)}
        return nodos
    end
end