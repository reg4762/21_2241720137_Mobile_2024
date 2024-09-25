// Praktikum 2

// LANGKAH 1
// void main(){
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }

// LANGKAH 3
void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; 
  var names3 = {}; 
  
  names1.add('Regita Delya Putri');
  names1.add('2241720137');

  // Menambahkan nama dan NIM menggunakan .addAll() ke names2
  names2.addAll({'Regita Delya Putri', '2241720137'});

  print("names1 after .add(): $names1");
  print("names2 after .addAll(): $names2");
  print(names3); // Masih map kosong
}