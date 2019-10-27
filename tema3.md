# Ejercicios Tema 2
## Puesta en marcha de microservicios

## Ejercicio 1
Durante los ejercicios del tema anterior aproveché para familiarizarme con Express y desarrollé la aplicación `califica-empresas` con una API REST directamente. Algunas de las llamadas que implementé se corresponden con lo que se pide en este ejercicio. Por ejemplo:

```
app.get('/listar-empresas',(req,res) =>{
    empr.getAll(function(tabla){
        res.send(tabla)
    });
});

```

En el ejercicio 5 del [tema 2](https://github.com/victorperalta93/IV-Ejercicios/blob/master/tema2.md) se puede ver más información sobre como implementé este tipo de llamadas.