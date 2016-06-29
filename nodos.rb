class Mutador

end

class Singular
    def mutar_fixnum(num)
    end
    def mutar_string(str)
    end
    def mutar_array(arr)
    end
end

class Uniforme
    def mutar_fixnum(num)
    end
    def mutar_string(str)
    end
    def mutar_array(arr)
    end
end

class Oscuro
    def mutar_fixnum(num)
    end
    def mutar_string(str)
    end
    def mutar_array(arr)
    end
end

class NodoNum < Fixnum
    def mutar(mutador)
        mutador.mutar_fixnum(self)
    end
end

class NodoString < String
    def mutar(mutador)
        mutador.mutar_string(self)
    end
end

class NodoArray < Array
    def mutar(mutador)
        mutador.mutar_array(self)
    end
end