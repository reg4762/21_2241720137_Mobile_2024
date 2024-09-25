### Nama    : Regita Delya Putri
### Absen   : 21
### NIM     : 2241720137
### Kelas   : TI 3F
### Pertemuan: 4

# Praktikum 1: Eksperimen Tipe Data List
## Langkah 1
~~~
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
~~~

## Langkah 2
Output:

![Output](./img/Screenshot%202024-09-19%20113653.png)


Kode ini menginisialisasi list, memeriksa elemen dan panjangnya menggunakan assert, mengubah elemen list, lalu mencetak hasilnya.

## Langkah 3
~~~
void main() {
  final List<String?> list = List.filled(5, null);
  
  list[1] = 'Regita Delya Putri'; 
  list[2] = '2241720137';

  print(list);     
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20214234.png)

# Praktikum 2: Eksperimen Tipe Data Set
## Langkah 1
~~~
void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
~~~

## Langkah 2

Output:

![Output](./img/Screenshot%202024-09-20%20214437.png)


Kode ini membuat sebuah set bernama `halogens` yang berisi nama-nama unsur halogen, kemudian mencetak isinya.

## Langkah 3
~~~
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
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20214726.png)

# Praktikum 3: Eksperimen Tipe Data Maps
## Langkah 1
~~~
void main() {
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
}
~~~

## Langkah 2

Output:

![Output](./img/Screenshot%202024-09-20%20215053.png)


Kode ini membuat dua map, gifts dengan kunci bertipe String dan nilai campuran, serta nobleGases dengan kunci bertipe integer dan nilai campuran, kemudian mencetak keduanya.

## Langkah 3
~~~
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
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20215526.png)

# Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators
## Langkah 1
~~~
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list1);
  print(list2);
  print(list2.length);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20215706.png)

## Langkah 2
~~~
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20215830.png)

## Langkah 3
~~~

void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20220031.png)

Menambahkan NIM

~~~
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  // Menambahkan NIM
  var listnim = [4, 1, 7, 2, 0, 1, 3, 7];
  print(listnim);
  var listnim2 = [2, 2, ...listnim];
  print("NIM: $listnim2");
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20220228.png)

## Langkah 4
Variabel promoActive ketika true.
~~~
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  // Menambahkan NIM
  var listnim = [4, 1, 7, 2, 0, 1, 3, 7];
  print(listnim);
  var listnim2 = [2, 2, ...listnim];
  print("NIM: $listnim2");

  print('Variabel PromoActive Ketika True');
  var promoActive = true; 
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav); 
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20220451.png)

Variabel promoActive ketika false.
~~~
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  // Menambahkan NIM
  var listnim = [4, 1, 7, 2, 0, 1, 3, 7];
  print(listnim);
  var listnim2 = [2, 2, ...listnim];
  print("NIM: $listnim2");

  print('Variabel PromoActive Ketika False');
  var promoActive = false; 
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav); 
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20220615.png)

## Langkah 5
Login case manager
~~~
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  // Menambahkan NIM
  var listnim = [4, 1, 7, 2, 0, 1, 3, 7];
  print(listnim);
  var listnim2 = [2, 2, ...listnim];
  print("NIM: $listnim2");

  print('Variabel PromoActive Ketika True');
  var promoActive = true; 
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav); 

  print('Variabel Login Memilih Kondisi Manager');
  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20221025.png)


Login case admin
~~~
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  // Menambahkan NIM
  var listnim = [4, 1, 7, 2, 0, 1, 3, 7];
  print(listnim);
  var listnim2 = [2, 2, ...listnim];
  print("NIM: $listnim2");

  print('Variabel PromoActive Ketika True');
  var promoActive = true; 
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav); 

  print('Variabel Login Memilih Kondisi Admin');
  var login = 'Admin';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20221120.png)

## Langkah 6
~~~
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];

  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  // Menambahkan NIM
  var listnim = [4, 1, 7, 2, 0, 1, 3, 7];
  print(listnim);
  var listnim2 = [2, 2, ...listnim];
  print("NIM: $listnim2");

  print('Variabel PromoActive Ketika True');
  var promoActive = true; 
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav); 

  print('');
  print('Variabel Login Memilih Kondisi Admin');
  var login = 'Admin';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  print('Penerapan Collection For');
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20221232.png)

Manfaat collection for dalam Dart adalah untuk mempermudah pembuatan dan manipulasi koleksi (list, set, map) secara dinamis berdasarkan kondisi atau iterasi, sehingga kode lebih ringkas dan mudah dibaca.

# Praktikum 5: Eksperimen Tipe Data Records
## Langkah 1
~~~
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record)
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20221840.png)

## Langkah 2
Kode ini mendefinisikan sebuah record di Dart dengan elemen positional ('first', 'last') dan elemen bernama (a: 2, b: true), lalu mencetaknya.

~~~
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20221925.png)

## Langkah 3
~~~
void main(){
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  
  var intRecord = (1, 2);
  var swapped = tukar(intRecord);
  print(swapped);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20222440.png)

## Langkah 4
~~~
void main(){
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Regita Delya Putri', 2241720137);
  print(mahasiswa); 
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20222636.png)

## Langkah 5
~~~
void main(){
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Regita Delya Putri', 2241720137);
  print(mahasiswa); 

  var mahasiswa2 = ('Regita Delya Putri', a: 2241720137, b: true, 'last');
  print(mahasiswa2.$1); // Prints nama
  print(mahasiswa2.a); // Prints nim
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20222800.png)


# Tugas Praktikum

## Soal 1
Jelaskan yang dimaksud Functions dalam bahasa Dart!
### Jawaban: 
Dalam bahasa Dart, functions (fungsi) adalah blok kode yang dapat dijalankan untuk melakukan tugas tertentu, menerima parameter sebagai input, dan dapat mengembalikan nilai sebagai output. Fungsi dapat didefinisikan dengan nama atau dibuat sebagai fungsi anonim, dan memungkinkan modularisasi kode, sehingga lebih mudah dibaca, digunakan kembali, dan dikelola.

## Soal 2
Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya
### Jawaban:
1. Positional Parameters: Parameter wajib yang harus diberikan saat memanggil fungsi. Contoh:
~~~
String sapa(String nama) {
  return 'Halo, $nama!';
}
~~~

2. Named Parameters: Parameter opsional yang dipanggil dengan nama parameternya, bisa diberi nilai default atau diatur sebagai required. Contoh:
~~~
void setInfoUser({required String nama, int umur = 0}) {
  print('Nama: $nama, Umur: $umur');
}
~~~

3. Optional Positional Parameters (Parameter Posisi Opsional): Parameter yang dibungkus dengan [] dan bisa diabaikan saat memanggil fungsi. Contoh:
~~~
String deskripsi(String nama, [int? umur]) {
  return '$nama berusia $umur tahun';
}
~~~

## Soal 3
Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
### Jawaban:
Dalam Dart, fungsi adalah objek kelas satu, yang berarti fungsi dapat disimpan dalam variabel, dikirim sebagai argumen, atau dikembalikan oleh fungsi lain. Contoh:
~~~
void cetakPesan(String pesan) {
  print(pesan);
}

void jalankanFungsi(Function callback) {
  callback('Halo dari callback!');
}

void main() {
  var fungsiSaya = cetakPesan;
  jalankanFungsi(fungsiSaya);
}
~~~
Fungsi bisa digunakan seperti objek lain di dalam Dart​

## Soal 4
Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
### Jawaban:
Fungsi anonim adalah fungsi tanpa nama yang sering digunakan saat memerlukan fungsi secara cepat, terutama saat ingin melewatkan fungsi sebagai argumen. Contoh:
~~~
var angka = [1, 2, 3];
angka.forEach((nomor) {
  print(nomor);
});
~~~

## Soal 5
Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
### Jawaban:
1. Lexical Scope: Mengacu pada ruang lingkup variabel berdasarkan tempat deklarasinya dalam kode. Variabel hanya dapat diakses di dalam blok atau fungsi tempat variabel tersebut dideklarasikan
2. Lexical Closures: Terjadi saat sebuah fungsi menangkap variabel dari lingkup sekitarnya. Fungsi dalam akan tetap memiliki akses ke variabel-variabel tersebut bahkan setelah fungsi luar selesai dieksekusi. Contoh:
~~~
Function buatPenambah(int tambahDengan) {
  return (int i) => i + tambahDengan;
}

var tambah2 = buatPenambah(2);
print(tambah2(3));  // Output: 5
~~~
Di sini, fungsi buatPenambah membuat closure yang mengingat nilai tambahDengan​

## Soal 6
Jelaskan dengan contoh cara membuat return multiple value di Functions!
### Jawaban:
Untuk mengembalikan beberapa nilai dari sebuah fungsi, dapat menggunakan fitur baru yang disebut records. Record adalah tipe data khusus yang memungkinkan Anda mengelompokkan beberapa nilai tanpa harus membuat class baru atau menggunakan struktur data seperti List atau Map.
~~~
// Returns multiple values in a record:
(String name, int age) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

final json = <String, dynamic>{
  'name': 'Dash',
  'age': 10,
  'color': 'blue',
};

// Destructures using a record pattern with positional fields:
var (name, age) = userInfo(json);

/* Equivalent to:
  var info = userInfo(json);
  var name = info.$1;
  var age  = info.$2;
*/
~~~



