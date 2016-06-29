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

class ArbolBinario
    include BFS
    attr_accessor :valor
    def initialize(valor, izq=nil, der=nil)
        @valor = valor
        @izq, @der = izq, der
    end

    def each
        if @izq != nil
            yield @izq
        end
        if @der != nil
            yield @der
        end
    end

    def to_s
        "Nodo: #{@valor}"
    end

end

class ArbolRosa
    include BFS
    attr_accessor :valor
    def initialize(valor, *hijos)
        @valor = valor
        @hijos = hijos
    end

    def each
        @hijos.each do |i|
            yield i
        end
    end

    def to_s
        "Nodo: #{@valor}"
    end
end