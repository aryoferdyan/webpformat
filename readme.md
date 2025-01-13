Cara Instalasi:

1. Install ImageMagick di https://imagemagick.org/script/download.php
2. Perbaiki PATH ImageMagick
Cari lokasi instalasi ImageMagick. Biasanya berada di:
C:\Program Files\ImageMagick-7.x.x-Q16-HDRI\

Pastikan folder tersebut telah ditambahkan ke variabel PATH di sistem:
Buka Control Panel > System > Advanced System Settings.
Klik tombol Environment Variables.
Di bagian System Variables, cari Path, lalu klik Edit.
Tambahkan jalur instalasi ImageMagick (contoh: C:\Program Files\ImageMagick-7.x.x-Q16-HDRI\) ke daftar.

Buka CMD ketik: magick -version

Jika berhasil muncul seperti ini:
Version: ImageMagick 7.1.1-43 Q16-HDRI x64 a2d96f4:20241222 https://imagemagick.org
Copyright: (C) 1999 ImageMagick Studio LLC
License: https://imagemagick.org/script/license.php
Features: Channel-masks(64-bit) Cipher DPC HDRI Modules OpenCL OpenMP(2.0)
Delegates (built-in): bzlib cairo flif freetype gslib heic jng jp2 jpeg jxl lcms lqr lzma openexr pangocairo png ps raqm raw rsvg tiff webp xml zip zlib
Compiler: Visual Studio 2022 (194234435)



Cara Penggunaan:

1. Copy file foto yang akan diformat ke folder program
2. Jalankan format.bat
3. Masukkan nama file
4. Foto yang sudah diformat akan berada di folder formatted

Cara Menghapus:

1. Jalankan Clear.bat
2. Konfirmasi

*akan menghapus semua foto yg sudah dan belum diformat