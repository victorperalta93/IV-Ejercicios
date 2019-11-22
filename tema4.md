# Ejercicios Tema 4
## Virtualización _ligera_ usando contenedores

## Ejercicio 1
Se propone instalar [LXC](https://linuxcontainers.org/lxc/) en nuestra versión de Linux favorita. En mi caso, esto quiere decir instalar el software en Fedora 31. Para ello la [wiki](https://fedoraproject.org/wiki/LXC) de Fedora nos facilita la instalación ejecutando lo siguiente:

```
# dnf install lxc lxc-templates
```

La comprobación de la versión instalada se realiza de la siguiente forma:

```
lxc-ls --version
```

En mi caso instalé la versión _3.0.4_. Se recomienda instalar la última versión disponible y asegurarnos de que sea mayor que la versión _1.0_.  
A fecha de 22 de Noviembre de 2019, la versión más actual es la _3.2.1_, pero ya que supero la versión _1.0_ con creces, prefiero tener instalada la versión disponible en el gestor de paquetes de Fedora.