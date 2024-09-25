// Praktikum 3

// LANGKAH 1
// void main() {
// var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// print(gifts);
// print(nobleGases);
// }

// LANGKAH 3
void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Regita Delya Putri',
    'nim': '2241720137'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    'nama': 'Regita Delya Putri',
    'nim': 2241720137
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Regita Delya Putri';
  gifts['nim'] = '2241720137';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases['nama'] = 'Regita Delya Putri';
  nobleGases['nim'] = '2241720137';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}


