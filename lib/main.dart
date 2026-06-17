class Animal {
  String nombre;

  Animal(this.nombre);

  // Método de la clase padre
  void hacerSonido() {
    print("$nombre hace un sonido");
  }

  // Método con parámetro posicional
  void comer(String alimento) {
    print("$nombre está comiendo $alimento");
  }

  // Método con parámetros nombrados
  void informacion({required int edad, required String color}) {
    print("Edad: $edad años, Color: $color");
  }
}

// Clase hija Perro
class Perro extends Animal {
  Perro(String nombre) : super(nombre);

  @override
  void hacerSonido() {
    print("$nombre dice: Guau Guau");
  }
}

// Clase hija Gato
class Gato extends Animal {
  Gato(String nombre) : super(nombre);

  @override
  void hacerSonido() {
    print("$nombre dice: Miau Miau");
  }
}

void main() {
  // Polimorfismo: lista de tipo padre
  List<Animal> animales = [
    Perro("Firulais"),
    Gato("Michi"),
  ];

  // Ejecución dinámica de métodos
  for (Animal animal in animales) {
    animal.hacerSonido();
  }

  // Uso de is y as
  Animal mascota = Perro("Rocky");

  if (mascota is Perro) {
    final perro = mascota 
    perro.comer("croquetas");
  }

  // Parámetros nombrados
  mascota.informacion(
    edad: 3,
    color: "marrón",
  );