@echo off
setlocal enabledelayedexpansion

:: Folder untuk menyimpan hasil
set "output_folder=formated"
set "watermark=watermark.png"

:: Cek apakah file watermark ada
if not exist "%watermark%" (
    echo File watermark.png tidak ditemukan!
    pause
    exit /b
)

:: Buat folder output jika belum ada
if not exist "%output_folder%" mkdir "%output_folder%"

:: Minta input prefix nama file
set /p "prefix=Masukkan prefix untuk nama file: "

:: Inisialisasi counter
set counter=1

:: Proses semua file gambar dalam folder, kecuali watermark.png
for %%f in (*.jpg *.jpeg *.png) do (
    if /i not "%%~nxf"=="%watermark%" (
        echo Memproses "%%f"...

        :: Resize gambar sambil menjaga rasio
        magick "%%f" -resize 1024x -quality 85 temp_resized.png

        :: Tambahkan watermark di sudut kanan bawah
        magick composite -gravity southeast -geometry +40+40 "%watermark%" temp_resized.png temp_watermarked.png

        :: Konversi ke format WebP dengan nama baru
        magick temp_watermarked.png "%output_folder%\%prefix%_!counter!.webp"

        :: Hapus file sementara
        del temp_resized.png
        del temp_watermarked.png

        :: Increment counter
        set /a counter+=1
    )
)

:: Konfirmasi selesai
echo Proses selesai. File disimpan di folder "%output_folder%".
pause
