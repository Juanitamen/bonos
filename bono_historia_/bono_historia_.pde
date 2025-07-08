PImage img;
int index = 0;

void setup() {
  size(1000, 1000);
  loadImageEvent(index); // Para mostrar la primera imagen desde el inicio
}

void draw() {
  if (img != null) {
    image(img, 0, 0, width, height);
  }
}

void mousePressed() {
  index++;
  loadImageEvent(index);
  println("Índice: " + index);
}

void loadImageEvent(int i) {
  switch (i) {
    case 0:
      println("evento 0");
      img = loadImage("inicio.png");
      break;
    case 1:
      println("evento 1");
      img = loadImage("desarrollo.png");
      break;
    case 2:
      println("evento 2");
      img = loadImage("desenlace.png"); // Asegúrate de que esté bien escrito
      break;
    default:
      println("No hay más eventos");
      img = null;
      break;
  }
}
