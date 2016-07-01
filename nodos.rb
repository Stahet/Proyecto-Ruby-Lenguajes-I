# nodos.rb
#
# Archivo donde se definen los diferentes tipos de mutadores
# ademas se extienden las clases Fixnum, String y Array
# 
# Se utilza el patron de despacho doble
#
# Autores : Jonnathan Ng
#           Joel Rivas

class Mutador
    def mutar_fixnum(num);end
    def mutar_string(str);end
    def mutar_array(str);end
end

class Singular < Mutador
    def self.mutar_fixnum(num)
        if num < 10
            return num
        end
        ult = num % 10
        num = num / 10
        suma = 0
        while num > 0
            suma = suma + num % 10
            num = num / 10
        end
        return ult*suma
    end

    def self.mutar_string(str)
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

    def self.mutar_array(arr)
        arr=arr.join(" ")
    end
end

class Uniforme < Mutador
    def self.mutar_fixnum(num)
        if num < 10
            return num
        end
        suma = 0
        n = 0
        while num > 0
            suma = suma + num % 10
            num = num / 10
            n = n + 1
        end
        return suma/n
    end

    def self.mutar_string(str)
        newStr= ''
        it= 1
        str.each_char do |c| 
            if (it % 2) == 0
                newStr+= c.downcase
            else
                newStr+= c.upcase
            end
            it+=1
        end
        newStr
    end

    def self.mutar_array(arr)
        arr=arr.map {|e| e.mutar(Uniforme)}
    end
end

class Oscuro < Mutador
    def self.mutar_fixnum(num)
        if num < 10
            return num
        end
        suma = 0
        pos = 0
        pot = 0
        while num > 0
            if pos.even?
                suma = suma + (num % 10)*(10**(pot))
                pot = pot + 1
            end
            pos = pos + 1
            num = num/10
        end
        suma
    end

    def self.mutar_string(str)
        newStr= ''
        auxPar=''
        auxImpar=''
        it= 1
        str.each_char do |c| 
            if (it % 2) == 0
                auxPar+=  c 
            else
                auxImpar+=  c 
            end
            it+=1
        end
        newStr=auxPar+auxImpar
    end

    def self.mutar_array(arr)
        size= arr.length
        mitad= arr.length/2
        listaRand = [*0..size-1].shuffle # Generamos lista aleatoria con numeros unicos
        i = 0
        while i < mitad
            pos = listaRand.pop
            arr[pos] = arr[pos].mutar(Oscuro)
            i+=1
        end 
        arr
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