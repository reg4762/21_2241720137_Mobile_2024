### Nama : Regita Delya Putri

### Absen : 21

### NIM : 2241720137

### Kelas : TI 3F

### Pertemuan: 11 (Pemrograman Asynchronous)

---

# Praktikum 1: Mengunduh Data dari Web Service (API)

## Langkah 1: Buat Project Baru

Output:

![Output](./img/1.1.png)

## Langkah 2: Cek file pubspec.yaml

Output:

![Output](./img/1.2.png)

## Langkah 3: Buka file main.dart

**Soal 1**

Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

```
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Regita',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {},
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
        ]),
      ),
    );
  }
}
```

## Langkah 4: Tambah method getData()

```
  Future<Response> getData() async {
    const authority = 'www.gooleapis.com';
    const path = '/books/v1/volumes/junbDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
```

**Soal 2**

- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. (Laut Bercerita)

Output:

![Output](./img/1.3.png)

- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W11: Soal 2".`

Output:

![Output](./img/1.4.png)

## Langkah 5: Tambah kode di ElevatedButton

```
ElevatedButton(
    child: const Text('GO!'),
    onPressed: () {
        setState(() {});
        getData().then((value) {
            result = value.body.toString().substring(0, 450);
            setState(() {});
            }).catchError((_) {
            result = 'An error occurred';
            setState(() {});
            });
        },
),
```

**Soal 3**

- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!

Jawaban:

Kode tersebut menggunakan `substring` untuk membatasi jumlah karakter dari respons API (`value.body`) hingga 450 karakter pertama agar tidak menampilkan teks terlalu panjang, namun ini berisiko memicu error jika panjang teks kurang dari 450, sehingga memerlukan pengecekan panjang terlebih dahulu. Selain itu, `catchError` digunakan untuk menangani error yang terjadi selama proses pengambilan data, seperti masalah jaringan atau kesalahan respons API, dengan mengubah nilai `result` menjadi pesan error (`'An error occurred'`) agar aplikasi tetap berjalan dan memberi tahu pengguna tentang kegagalan tersebut.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 3".

Output:

![Output](./img/1.gif)
