import 'dart:math';

class RandomGenerator {
  int randNum(int numMax) {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(numMax + 1);
  }
}
