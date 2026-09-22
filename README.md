# Week 3 - Navigation and Form

Proyek ini adalah latihan Flutter untuk mempelajari konsep navigasi antar halaman, tata letak antarmuka, serta penyusunan alur aplikasi yang sederhana namun rapi. Tema wisata kampus hanya digunakan sebagai studi kasus untuk menjelaskan bagaimana sebuah aplikasi multi-halaman bekerja, bukan sebagai fokus utama proyek.

## Tujuan Proyek

Proyek ini dibuat untuk membantu memahami:

- navigasi antar layar menggunakan `Navigator`
- pembuatan halaman beranda, detail, dan halaman konfirmasi
- penggunaan widget layout seperti `Column`, `Row`, `Padding`, dan `ListTile`
- pengelolaan UI dengan scroll, spacing, dan tombol aksi
- penggunaan asset lokal untuk menampilkan gambar pada aplikasi
- struktur folder yang umum digunakan dalam aplikasi Flutter

## Gambaran Umum Aplikasi

Aplikasi ini mencontohkan flow dasar aplikasi mobile dengan beberapa layar:

1. halaman utama berisi daftar menu atau item
2. halaman detail menampilkan informasi lebih lanjut
3. halaman petunjuk atau rute menampilkan langkah-langkah
4. halaman sukses sebagai penutup alur aktivitas

Dengan demikian, proyek ini dapat menjadi contoh dasar untuk membangun aplikasi mobile yang memiliki alur navigasi yang jelas.

## Fitur yang Diterapkan

- Halaman utama dengan hero image dan daftar item
- Navigasi ke halaman detail ketika item dipilih
- Tombol aksi untuk berpindah ke halaman berikutnya
- Halaman petunjuk/rute dengan langkah-langkah berurutan
- Halaman konfirmasi bahwa proses telah selesai
- Desain modern dengan warna biru sebagai tema utama
- Penggunaan gambar lokal dari folder `assets/images`

## Struktur Folder

```text
week_3_navigation_and_form/
├── android/                     # Konfigurasi project Android
├── assets/
│   └── images/                  # File gambar yang dipakai aplikasi
│       ├── home.png
│       ├── detail_lokasi.png
│       ├── rute.png
│       └── done.png
├── lib/
│   ├── main.dart                # Entry point aplikasi
│   └── pages/
│       ├── detail_page.dart
│       ├── home_page.dart
│       ├── succes_page.dart
│       └── studi_kasus/
│           └── Wisata_Kampus/
│               ├── home_wisata.dart
│               ├── detail_wisata.dart
│               ├── petunjuk_page.dart
│               └── succes_page.dart
├── test/                       # Tempat file test jika dikembangkan lebih lanjut
├── analysis_options.yaml
├── pubspec.yaml
├── README.md
├── .gitignore
├── web/
└── pubspec.lock
```

## Teknologi

- Flutter
- Dart
- Material Design

## Persyaratan Sistem

Pastikan lingkungan Anda sudah siap:

- Flutter SDK 3.x
- Android Studio atau VS Code dengan plugin Flutter
- Emulator Android atau perangkat fisik
- Dependensi Flutter sudah diunduh dengan `flutter pub get`

## Cara Menjalankan Proyek

1. Buka terminal di folder project
2. Jalankan perintah berikut:

```bash
flutter pub get
flutter run
```

Jika ingin menjalankan pada device tertentu:

```bash
flutter devices
flutter run -d <device_id>
```

## Perintah Berguna

```bash
flutter pub get
flutter analyze
flutter test
flutter build apk
```

## Catatan Asset

Aplikasi ini menggunakan file gambar lokal yang dipanggil dari `assets/images`. Pastikan file berikut tersedia agar tampilan aplikasi tampil dengan benar:

- `assets/images/home.png`
- `assets/images/detail_lokasi.png`
- `assets/images/rute.png`
- `assets/images/done.png`

## Fokus Pembelajaran

Proyek ini dirancang untuk melatih kemampuan dasar dalam pengembangan aplikasi mobile, khususnya:

- struktur aplikasi Flutter
- routing dan navigasi antar halaman
- pembuatan UI yang konsisten dan mudah dibaca
- perpaduan layout dan visual hierarchy
- implementasi alur interaksi pengguna pada aplikasi mobile

## Catatan Penting

Tema atau konten yang ditampilkan dalam aplikasi ini adalah contoh studi kasus, bukan representasi produk akhir yang siap dipublish. Tujuan utamanya adalah belajar konsep mobile development secara praktis.

## Penutup

Project ini merupakan contoh dasar untuk memahami bagaimana aplikasi mobile dibangun dengan alur yang sederhana, jelas, dan mudah dikembangkan lebih lanjut. Ini adalah materi pembelajaran yang cocok untuk memahami navigasi aplikasi, layout UI, dan struktur aplikasi Flutter yang rapi.
