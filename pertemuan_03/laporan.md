### Nama    : Regita Delya Putri
### Absen   : 21
### NIM     : 2241720137
### Kelas   : TI 3F
### Pertemuan: 3
# Praktikum 1: Menerapkan Control Flows ("if/else")
## Langkah 1
~~~
void main(){
    String test = "test2";

    if (test == "test1") {
        print("Test1");
    } else If (test == "test2") {
        print("Test2");
    } else {
        print("Something else");
    }
    if (test == "test2") 
        print("Test2 again");
}
~~~

Output:

![Output](./img/Screenshot%202024-09-19%20063504.png)

## Langkah 2
Pada langkah 1 terjadi error dikarenakan pada kode "else If" typo yang benar adalah "if else". Setelah itu pada kode if yang bawah kurang ditambahkan kurung kurawa "{}". Kode yang benar seperti di bawah ini:

~~~
void main() {
  String test = "test2";
  
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }
  if (test == "test2") {
    print("Test2 again");
  }
}
~~~

Output:

![Output](./img/Screenshot%202024-09-19%20063726.png)

## Langkah 3
~~~
void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }

  String test = "true";
  if (test) {
    print("Kebenaran");
  }
} 
~~~

Output:

![Output](./img/Screenshot%202024-09-19%20073228.png)

Langkah di atas mengalami error dikarenakan. Oleh karena itu harus mengganti seperti di bawah ini

~~~
void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }

  // Menambahkan kode ini
  test = "true";
  if (test == "true") {
    print("Kebenaran");
  }
}
~~~

Output:

![Output](./img/Screenshot%202024-09-19%20100653.png)

# Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

## Langkah 1
~~~
void main() {
while (counter < 33) {
  print(counter);
  counter++;
}
}
~~~

Output:

![Output](./img/Screenshot%202024-09-19%20101355.png)

## Langkah 2
Langkah 1 mengalami error karena belum dilakukan insialisasi. Oleh karena itu pada kode di bawah ini dilakukan insialisasi
~~~ 
void main() {
  int counter = 0; // Initialize counter
  
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
~~~

Output:

![Output](./img/Screenshot%202024-09-19%20101659.png)

## Langkah 3
Menambahkan kode
~~~
void main() {
  int counter = 0;
  while (counter < 33) {
    print("counter");
    counter++;
  }
  do {
    print(counter);
    counter++;
  } while (counter < 77);
}
~~~

Output:

![Output](./img/Screenshot%202024-09-19%20102123.png)
![Output](./img/Screenshot%202024-09-19%20102142.png)

# Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"
## Langkah 1
~~~
void main() {
  for (Index = 10; index < 27; index) {
  print(Index);
}
}
~~~
Output:

![Output](./img/Screenshot%202024-09-19%20102438.png)

## Langkah 2
Kode pada langkah satu error dikarenakan tidak ditambahkan tipe datanya. Kode di bawah ini akan menambahkannya
~~~
void main() {
  for (int index = 10; index < 27; index) {
  print("Index");
}
}
~~~
Output:

![Output](./img/Screenshot%202024-09-19%20103723.png)

## Langkah 3
~~~
void main() {
  for (int index = 10; index < 27; index) {
    print("Index");

    If (Index == 21) break;
    else If (index > 1 || index < 7) continue;
    print(index);
  }
}
~~~
Output:

![Output](./img/Screenshot%202024-09-19%20104157.png)

Kode di atas error karena terjadi beberapa typo. Berikut kode yang benar
~~~
void main() {
  for (int index = 10; index < 27; index++) {
    print("Index");

    if (index == 21) break;
    else if (index > 1 && index < 7) continue;
    
    print(index);
  }
}
~~~
Output:

![Output](./img/Screenshot%202024-09-19%20104803.png)

# Tugas
Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

~~~
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
~~~

Output:

![Output](./img/Screenshot%202024-09-20%20212712.png)
