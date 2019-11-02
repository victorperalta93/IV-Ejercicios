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

## Ejercicio 2
Mi aplicación `califica-empresas` no tiene ninguna petición en la que los datos de envío vienen incluidos en la dirección de la petición. Por tanto, voy a implementar una petición nueva y probar esta funcionalidad:

```
app.put('/actualizar-calif/:usuario/:empresa/:valor', (req,res) =>{
    res.send(calif.actualizar(req.params.usuario,req.params.empresa,req.params.valor))
})
```

Una vez recibida la petición, se ejecuta la siguiente función:

```
actualizar(usuario,empresa,valor){
    return this.db.conn.run('UPDATE calificaciones SET valor=? WHERE usuario=? AND empresa=?',[valor,usuario,empresa,],(err) =>{
                    if(err)
                        throw err
                    })
}
```

Probemos ahora la nueva funcionalidad, el estado actual de la base de datos es:

```
[
    {
        "id": 1,
        "usuario": "Víctor",
        "empresa": "Microsoft",
        "valor": 7
    },
    {
        "id": 3,
        "usuario": "Julián",
        "empresa": "Google",
        "valor": 9
    },
    {
        "id": 4,
        "usuario": "Fran",
        "empresa": "Netflix",
        "valor": 10
    }
]
```

Podemos utilizar la siguiente dirección para realizar la petición: `localhost:5000/actualizar-calif/Fran/Netflix/10`

![imagen](img/t3/put_postman.png)

El servidor nos devuelve `Status: 200 OK`. Si ahora volvemos a consultar la base de datos:

![imagen](img/t3/res_ej2.png)
