# Estudiantes
### 11-10199 - Jonnathan Ng
### 11-10866 - Joel Rivas

[comment]: # "Si el grupo es de un solo integrante, elimine la linea anterior"
---
# Respuestas

> Los lenguajes de programación orientados a objetos que poseen herencia simple están limitados a incorporar comportamientos de un solo ancestro al momento de definir una clase.

<[No] No necesariamente, ya que si se dispone de una clase A que hereda de una clase B y esta a su vez de una clase C (A < B) y (B < C), A incluye el comportamiento tanto de su ancestro mas proximo (B) como de sus ancestros superiores (C). 

> Lenguajes de POO con un sistemas de tipos estático (C++, Java, C\#) no tienen la posibilidades de elegir la implementación de un método a tiempo de ejecución (despacho dinámico).

< [No] Ya que lenguajes como Java poseen despacho dinámico por defecto cuando se hace una sobreescritura (Override) de métodos, además lenguajes como C++/C\# es posible elegir la implementación de un método a tiempo de ejecución si se utilizan métodos virtuales en las clases.>

> La introspección y reflexibidad son conceptos que se manejan en la POO pero no guardar ninguna relación entre sí.

<[Si|No] [pero]...>

> En un lenguaje con un sistema de tipos dinámico la sobrecarga de métodos es innata y representa una comodidad dado que permite implementar un mismo método para distintos tipos.

<[Si|No] [pero]...>

> En los lenguajes POO existen los términos interfaz, módulo, clase abstracta, rol, etc; definidos como objetos que pueden encapsular definiciones de clases o implementaciones concretas de métodos.

<[Si] [pero]...>

> Los métodos virtuales permiten asociar, al momento de compilar, una implementación de un método sobrecargado con una llamada del mismo; eliminando el **overhead** del despacho dinámico.

<[No] Los métodos virtuales permiten asociar a tiempo de ejecución la implementación de un método sobrecargado, utilizando estructuras adicionales como los vtables, que facilitan elegir la version adecuada, pero aun existe un overhead ya que esta decision aun debe realizarse a tiempo de ejecución>

> Cuando un lenguaje de POO tiene herencia simple no ocurre el problema del diamante pero de igual forma pueden existir llamadas ambiguas de métodos, dado que incorporar interfaces, módulos, protocolos, etc, no evita colisión de nombres.

<[Si] En lenguajes como Java o C\# se permite la implementacion de varias interfaces. Esto puede ocasionar conflictos de nombres que en el caso de C\# la solución es utilizar lo que se denomina la implementación explícita de interfaces, en donde se precede con el nombre de la interfaz, el método a ser implementado. En lenguajes como Ruby sucede algo similar con los mixins. Otros casos como Java no permiten esta facilidad, por lo que es necesario recurrir a otras técnicas como el uso del patrón de diseño de delegación. >

> El paso de mensaje es un término que se maneja en modelos concurrentes, también de POO y es equivalente a la llamada de una función.

<[Si|No] [pero]...>

> Sin importar la herencia del lenguaje de POO, una clase podría tener más de un ancestro.

<[Si|No] [pero]...>