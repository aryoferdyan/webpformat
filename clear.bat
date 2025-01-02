@echo off
setlocal enabledelayedexpansion

:: Menyimpan nama file yang ingin dikecualikan di folder utama
set EXCLUDE1=watermark.png
set EXCLUDE2=format.bat
set EXCLUDE3=clear.bat

:: Menampilkan peringatan sebelum menghapus file di folder utama
echo Peringatan: Skrip ini akan menghapus semua file di folder ini kecuali %EXCLUDE1%, %EXCLUDE2%, dan %EXCLUDE3%.
set /p confirmation="Apakah Anda yakin ingin melanjutkan? (Y/N): "
if /i not "%confirmation%"=="Y" (
    echo Penghapusan dibatalkan.
    pause
    exit /b
)

:: Menghapus file di folder utama kecuali yang dikecualikan
for %%f in (*.*) do (
    if /i not "%%f"=="%EXCLUDE1%" if /i not "%%f"=="%EXCLUDE2%" if /i not "%%f"=="%EXCLUDE3%" (
        del "%%f"
    )
)

:: Menampilkan peringatan sebelum menghapus file di folder 'formated'
echo Peringatan: Skrip ini akan menghapus SEMUA file di dalam folder 'formated' tanpa pengecualian.
set /p confirmation="Apakah Anda yakin ingin melanjutkan? (Y/N): "
if /i not "%confirmation%"=="Y" (
    echo Penghapusan di folder 'formated' dibatalkan.
    pause
    exit /b
)

:: Menghapus semua file di dalam folder 'formated' tanpa pengecualian
if exist "formated" (
    del /q "formated\*.*"
)

echo Semua file kecuali %EXCLUDE1%, %EXCLUDE2%, dan %EXCLUDE3% telah dihapus dari folder utama, dan semua file di folder 'formated' telah dihapus tanpa pengecualian.
pause
