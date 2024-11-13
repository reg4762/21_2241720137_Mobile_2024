### Nama    : Regita Delya Putri
### Absen   : 21
### NIM     : 2241720137
### Kelas   : TI 3F
### Pertemuan: 9 (Kamera)
---

# Praktikum 1: Mengambil Foto dengan Kamera di Flutter
Output:

https://github.com/user-attachments/assets/da0a4f14-884e-4afa-9457-9c0e273987be

# Praktikum 2: Membuat photo filter carousel
Output:

https://github.com/user-attachments/assets/f5f748cf-6194-4ffc-9660-b2e144cc0714

# TUGAS PRAKTIKUM

## 1. Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat!

## 2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!
### Jawaban:

Membuat project baru bernama "filter_camera"

Output:

<video controls src="img/filter_camera.mp4" title="Title"></video>

## 3. Jelaskan maksud void async pada praktikum 1?
### Jawaban:

Future<void> main() async menunjukkan bahwa fungsi main bersifat asinkron (async) dan akan mengembalikan sebuah Future<void>, yang memungkinkan penggunaan await di dalamnya untuk menjalankan operasi asinkron, seperti memuat kamera sebelum memulai aplikasi.

## 4. Jelaskan fungsi dari anotasi @immutable dan @override ?
### Jawaban:

Anotasi `@immutable` dalam Dart dan Flutter berfungsi untuk memastikan bahwa suatu kelas tidak dapat diubah (immutable) setelah objeknya dibuat. Dalam konteks Flutter, anotasi ini sering digunakan pada widget stateless yang bersifat konstan dan tidak boleh diubah setelah diinisialisasi. Jika kelas diberi anotasi `@immutable`, semua variabel instance di dalamnya harus bersifat `final`, sehingga nilai mereka tidak dapat dimodifikasi setelah objek dibuat. Hal ini penting untuk menjaga konsistensi widget dan mengurangi risiko bug dalam antarmuka pengguna.

Anotasi `@override`, di sisi lain, digunakan untuk menandai bahwa suatu metode menggantikan metode yang diwarisi dari superclass. Ini membantu meningkatkan keterbacaan kode dan memastikan bahwa metode yang dimodifikasi memiliki nama yang tepat dengan metode aslinya. Penggunaan `@override` juga berguna dalam widget Flutter, terutama ketika menimpa metode `build` dalam kelas `StatelessWidget` atau `StatefulWidget`. Dengan menggunakan `@override`, kita dapat memastikan bahwa metode tersebut akan dipanggil saat widget dirender, sehingga memberikan kontrol penuh atas bagaimana widget ditampilkan.

## 5. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!
