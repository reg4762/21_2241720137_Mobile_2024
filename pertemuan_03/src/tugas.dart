void main() {
  String name = 'Regita Delya Putri';
  String nim = '2241720137';

  print('Bilangan prima dari 0 sampai 201:');

  for (int i = 2; i <= 201; i++) {
    if (isPrime(i)) {
      print('$i $name, $nim');
    }
  }
}

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
