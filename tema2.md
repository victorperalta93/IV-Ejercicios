# Ejercicios Tema 2
## Desarrollo basado en pruebas

### Ejercicio 3
He creado tests para Ruby con RSpec, en concreto para comprobar el resultado de una función que calcula el máximo común divisor mediante el algoritmo de Euclides. 

Como dicta el desarrollo basado en pruebas, lo primero es realizar los tests que queremos aplicar:

```
require 'euclides'

RSpec.describe "#mcd" do
    it "should calculate the mcd of the given numbers" do
        res = mcd(1032,180)
        expect(res).to eq 12
    end

    it "should work if the first number is bigger than the second one" do
        res = mcd(180,1032)
        expect(res).to eq 12
    end
end
```

A continuación, se desarrolla el programa en cuestión:

```
def mcd(x,y)
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
end
```

Al ejecutar la prueba, la salida es:

```
#mcd
  should calculate the mcd of the given numbers
  should work if the first number is bigger than the second one

Finished in 0.00132 seconds (files took 0.07969 seconds to load)
2 examples, 0 failures
```

Vamos a añadir una nueva prueba para comprobar si la función maneja correctamente que introduzcamos otros tipos de datos:

```
    it "should fail if x or y are not integers" do
        res = mcd("a","b")
        expect(res). to eq "arguments must be integers"
    end
```

Si volvemos a ejecutar la prueba...

```
#mcd
  should calculate the mcd of the given numbers
  should work if the first number is bigger than the second one
  should fail if x or y are not integers (FAILED - 1)

Failures:

  1) #mcd should fail if x or y are not integers
     Failure/Error: cociente = x / y
     
     NoMethodError:
       undefined method `/' for "a":String
     # ./lib/euclides.rb:8:in `mcd'
     # ./spec/euclides_spec.rb:15:in `block (2 levels) in <top (required)>'

Finished in 0.00295 seconds (files took 0.08598 seconds to load)
3 examples, 1 failure

Failed examples:

rspec ./spec/euclides_spec.rb:14 # #mcd should fail if x or y are not integers
```

Dado que el test ha fallado ahora añadimos esa funcionalidad:

```
    if(x.is_a? Integer and y.is_a? Integer) then
```
Y ahora sí, nuestro test es un éxito!

```
#mcd
  should calculate the mcd of the given numbers
  should work if the first number is bigger than the second one
  should fail if x or y are not integers

Finished in 0.0014 seconds (files took 0.07683 seconds to load)
3 examples, 0 failures
```

Todo el código de este ejercicio se puede ver [aquí](https://github.com/victorperalta93/IV-Ejercicios/blob/master/t2/ejercicio3)