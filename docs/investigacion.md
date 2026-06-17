// Sobreescritura de métodos//
1. ¿Qué es?
R/= La sobreescritura de métodos consiste en modificar un método que viene de una clase padre para que las clases hijas tengan un comportamiento diferente.

2. ¿Para qué sirve?
R/= Sirve para que cada objeto pueda hacer una misma acción, pero de una manera distinta. Esto ayuda a reutilizar código y hacerlo más organizado.

3. Uso de @override en Dart
R/= La palabra @override se utiliza para indicar que un método de una clase hija está reemplazando uno que viene de la clase padre.
//Ejemplo funcional//
class Animal {
  void hacerSonido() {
    print("Hace un sonido");
  }
}

class Perro extends Animal {
  @override
  void hacerSonido() {
    print("Guau Guau");
  }
}
En este proyecto, las clases Perro y Gato heredan de Animal, pero cada una tiene una forma diferente de hacer el método hacerSonido().

2. Polimorfismo

1.Concepto de polimorfismo
R/= El polimorfismo permite trabajar con objetos diferentes usando una misma clase padre. De esta forma, una variable de tipo Animal puede almacenar un Perro o un Gato.

2. Uso de la variable de tipo padre que almacena objetos hijos
R/= Se puede crear una lista de tipo Animal y guardar objetos Perro y Gato.
Animal a1 = Perro();
Animal a2 = Gato();

3. Ejecución dinámica de métodos
R/= Cuando se llama al método hacerSonido(), cada objeto responde de acuerdo con su tipo. El perro hace “Guau Guau” y el gato hace “Miau Miau”.

4. Casting en Dart (is y as)
R/= La palabra is sirve para comprobar de qué tipo es un objeto, mientras que as sirve para convertirlo a un tipo específico cuando es necesario.
//ejemplo practico//
if (animal is Perro) {
  Perro perro = animal as Perro;
}
3. Parámetros en Dart

1. Parámetros posicionales
R/= Son aquellos que les brindan un orden especifico

2. Parámetros nombrados
R/= Son los que se escriben indicando el nombre en especifico

3. Parámetros opcionales
R/= Son parámetros que no es obligatorio enviar al llamar un método.

4. Diferencias y casos de uso
R/=La principal diferencia es que los parámetros posicionales dependen del orden, mientras que los nombrados permiten identificar cada dato por su nombre. En mi proyecto utilicé ambos para entender mejor cómo funcionan.