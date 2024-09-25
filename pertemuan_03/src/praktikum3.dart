// Praktikum 3

// LANGKAH 1
// void main() {
//   for (Index = 10; index < 27; index) {
//   print(Index);
// }
// }

// LANGKAH 2
// void main() {
//   for (int index = 10; index < 27; index) {
//   print("Index");
// }
// }

// LANGKAH 3
void main() {
  for (int index = 10; index < 27; index) {
  print("Index");

  if (index == 21) break;
  else if (index > 1 || index < 7) continue;
  print(index);
  }
}

// Kode Yang Benar
// void main() {
//   for (int index = 10; index < 27; index++) {
//     print("Index");

//     if (index == 21) break;
//     else if (index > 1 && index < 7) continue;
    
//     print(index);
//   }
// }


