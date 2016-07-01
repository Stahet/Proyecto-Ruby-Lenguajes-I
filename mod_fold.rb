# mod_fold.rb
# 
# Modulo que implementa el metodo fold, que utiliza un recorrido en dfs
#
# Autores : Jonnathan Ng
#           Joel Rivas

module Fold
    def dfs
        pila = []
        pila.push(self)
        while not pila.empty?
            nodo = pila.pop
            yield nodo
            hijos = []
            nodo.each do |i|
                hijos.unshift(i) # Metemos en una cola para preservar orden dfs
            end
            pila.concat(hijos) # Empilamos los hijos
        end
    end

    def fold(acum)
        dfs {|x| acum = yield x,acum}
        acum
    end
end