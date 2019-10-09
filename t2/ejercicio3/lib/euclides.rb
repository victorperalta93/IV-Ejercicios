def mcd(x,y)
    if(x.is_a? Integer and y.is_a? Integer) then
        resto = 1
        cociente = 0
        mcd = nil

        while resto != 0 do
            # división entera
            cociente = x / y
            resto    = x % y

            # si el resto es 0, hemos encontrado el mcd
            if resto == 0 then
                mcd = y
            else
                x = y
                y = resto
            end
        end

        return mcd
    else
        return "arguments must be integers"
    end
end