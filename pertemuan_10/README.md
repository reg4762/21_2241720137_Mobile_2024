### Nama    : Regita Delya Putri
### Absen   : 21
### NIM     : 2241720137
### Kelas   : TI 3F
### Pertemuan: 10 (Dasar State Management)
---

# Tugas Praktikum 1: Dasar State dengan Model-View

## 1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.

## 2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

### Jawaban:

Membuat file data_layer.dart untuk mengatur export model seperti plan.dart dan task.dart mempermudah proses pengembangan dan pemeliharaan aplikasi. Dengan mengimpor model melalui satu file, kita bisa merapikan kode dan mengurangi jumlah pernyataan impor yang berulang di seluruh proyek. Selain itu, langkah ini membantu aplikasi lebih mudah discale, karena jika ada perubahan atau penambahan model, cukup memperbarui export di satu tempat tanpa mengubah banyak file lain. Praktik ini menjaga struktur proyek tetap terorganisir dan mempermudah pemeliharaan kode seiring berkembangnya aplikasi.

## 3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

### Jawaban:

Variabel plan diperlukan di langkah ini karena akan jadi tempat untuk menyimpan daftar rencana atau tugas yang ditampilkan di aplikasi. Dengan adanya variabel plan di kelas _PlanScreenState, kita bisa dengan mudah mengakses dan memanipulasi data rencana tersebut.

Variabel ini dibuat sebagai konstanta (const Plan()) karena data awal Plan di sini bersifat tetap atau belum perlu diubah. Jadi, const digunakan supaya objek ini tetap dan tidak berubah-ubah saat pertama kali dibuat. Namun, kalau nanti datanya perlu diubah (misalnya saat kita menambahkan tugas baru ke daftar), kita bisa menghapus const agar objeknya menjadi dinamis dan bisa di-update di dalam aplikasi.

## 4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
### Jawaban:

Kita disini membuat aplikasi planning yang dapat mencatat segala kebutuhan dari usernya, ketika kebutuhan atau tugas tersebut telah diselesaikan user dapat mencentang tugasnya.

Output:

![Output](./img/1.gif)

## 5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

## 6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

