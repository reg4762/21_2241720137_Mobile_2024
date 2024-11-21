### Nama : Regita Delya Putri

### Absen : 21

### NIM : 2241720137

### Kelas : TI 3F

### Pertemuan: 12 (Streams)

---

# Praktikum 1: Dart Streams

Output:

![Output](./img/1.1.png)

## Langkah 1: Buat Project Baru

```
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Regita',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

**Soal 1**
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

Jawaban:

```
Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Regita', // Nama: Regita
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const StreamHomePage(),
    );
  }
```

- Gantilah warna tema aplikasi sesuai kesukaan Anda.

Jawaban:

```
Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Regita',
      theme: ThemeData(
        primarySwatch: Colors.brown, Color: Brown
      ),
      home: const StreamHomePage(),
    );
  }
```

- Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"

## Langkah 2: Buka file main.dart
## Langkah 3: Buat file baru stream.dart
## Langkah 4: Tambah variabel colors
## Langkah 5: Tambah method getColors()
## Langkah 6: Tambah perintah yield*
## Langkah 7: Buka main.dart
## Langkah 8: Tambah variabel
## Langkah 9: Tambah method changeColor()
## Langkah 10: Lakukan override initState()
## Langkah 11: Ubah isi Scaffold()
## Langkah 12: Run
## Langkah 13: Ganti isi method changeColor()

