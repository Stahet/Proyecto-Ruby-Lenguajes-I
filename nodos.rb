# nodos.rb
#
# Archivo donde se definen los diferentes tipos de mutadores
# ademas se extienden las clases Fixnum, String y Array
# 
# Autores : Jonnathan Ng
#           Joel Rivas

class Mutador

end

class Singular
    def mutar_fixnum(num)
    end
    def mutar_string(str)
        singular= "singular"
        newStr= ''
        str.each_char do |c| 
            if singular[c]==nil
                newStr+=c 
            else 
                newStr+= c.upcase
            end
        end
        newStr
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

class Fixnum
    def mutar(mutador)
        mutador.mutar_fixnum(self)
    end
end

class String
    def mutar(mutador)
        mutador.mutar_string(self)
    end
end

class Array
    def mutar(mutador)
        mutador.mutar_array(self)
    end
end