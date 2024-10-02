### Nama    : Regita Delya Putri
### Absen   : 21
### NIM     : 2241720137
### Kelas   : TI 3F
### Pertemuan: 4
---

# Praktikum 1: Membuat Project Flutter Baru
## Langkah 1
Membuat project application Flutter baru

![Output](./img/01.png)
![Output](./img/02.png)

## Langkah 2
Memilih folder tempat menyimpan project ini

![Output](./img/03.png)

## Langkah 3
Buat nama project flutter hello_world

![Output](./img/04.png)

## Langkah 4
Output: 

![Output](./img/05.png)

# Praktikum 2: Menghubungkan Perangkat Android atau Emulator
Menjalankan aplikasi di perangkat Android menggunakan Wi-Fi

## Langkah 1
Di Android Studio, pilih Pair Devices Using Wi-Fi 

![Output](./img/10.png)

Dialog Pair devices over Wi-Fi akan terbuka

![Output](./img/11.png)

## Langkah 2
Buka Developer options, scroll ke bawah ke bagian Debugging, lalu aktifkan Wireless debugging.

![Output](./img/12.jpg)

Pada pop-up Izinkan proses debug nirkabel di jaringan ini?, pilih Allow.

## Langkah 3
Kemudian sambungkan device menggunakan QR code dengan menscannya

![Output](./img/13.jpg)

## Langkah 4

Lalu Run main.dart pada windows dan tunggu prosesnya selesai

![Output](./img/09.png)

Pada Handphone akan tampil programnya

![Output](./img/15.jpg)

# Praktikum 3: Membuat Repository GitHub dan Laporan Praktikum
## Langkah 1
Add ke repository

![Output](./img/17.png)

## Langkah 2
Commit ke repository

![Output](./img/18.png)

## Langkah 3
Push ke repository

![Output](./img/16.png)

## Langkah 4
Running project hello_world dengan tekan F5 atau Run > Start Debugging
![Output](./img/08.png)

# Praktikum 4: Menerapkan Widget Dasar
## Langkah 1: Text Widget
Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart

![Output](./img/19.png)

Lakukan import file text_widget.dart ke main.dart

![Output](./img/20.png)
![Output](./img/21.png)

## Langkah 2: Image Widget
Buat sebuah file image_widget.dart di dalam folder basic_widgets. Disini saya mengatur ukuran gambarnya agar tidak terlalu besar

![Output](./img/22.png)

Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.

![Output](./img/23.png)
![Output](./img/24.png)

Output

![Output](./img/27.png)

# Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino
## Langkah 1: Cupertino Button dan Loading Bar
~~~
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        margin: const EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: const Text("Contoh button"),
              onPressed: () {},
            ),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
~~~

## Langkah 2: Floating Action Button (FAB)
~~~
import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
~~~

## Langkah 3: Scaffold Widget
~~~
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'My Increment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
~~~

Output:

![Output](./img/28.png)

## Langkah 4: Dialog Widget
~~~
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
~~~

Output:

![Output](./img/29.png)

Dapat menampilkan pesan alert, tombol OK akan menutup dialog.

![Output](./img/30.png)

## Langkah 5: Input dan Selection Widget
~~~
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh TextField")),
        body: const TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nama',
          ),
        ),
      ),
    );
  }
}
~~~

Output:

![Output](./img/31.png)

Dapat meginputkan teks.

![Output](./img/32.png)

## Langkah 6: Date and Time Pickers
~~~
import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date Picker',
      home: MyHomePage(title: 'Contoh Date Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  //  Initial SelectDate FLutter
  Future<void> _selectDate(BuildContext context) async {
    // Initial DateTime FIinal Picked
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => {
                _selectDate(context),
                // ignore: avoid_print
                print(selectedDate.day + selectedDate.month + selectedDate.year)
              },
              child: const Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}
~~~

Output:

![Output](./img/33.png)

Dapat mengatur dan mengganti tanggal

![Output](./img/34.png)


# Tugas Praktikum

## Percobaan membuat aplikasi baru

![Output](./img/36.png)

## Percobaan menambahkan Tombol

![Output](./img/38.png)

## Percobaan menambahkan padding pada text

![Output](./img/40.png)

## Percobaan mengatur tema dan gaya

![Output](./img/41.png)

## Percobaan mengganti warna pada tema

![Output](./img/42.png)

## Percobaan mengganti tema text

![Output](./img/43.png)

## Percobaan menempatkan UI di tengah

![Output](./img/47.png)

## Percobaan membuat tampilan lebih rapi

![Output](./img/48.png)


## Percobaan menambahkan tombol like

![Output](./img/51.png)

## Percobaan menambahkan kolom samping navigasi

![Output](./img/52.png)

## Percobaan setState

![Output](./img/53.png)

## Percobaan selectedIndex

![Output](./img/54.png)

## Percobaan membuat tampilan renponsif

![Output](./img/55.png)

## Percobaan menambahkan halaman baru

![Output](./img/56.png)