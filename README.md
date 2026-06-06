# orkom-oregano8051-bubblesort
Project Akhir Mata Kuliah Organisasi dan Arsitektur Komputer - Simulasi Bubble Sort pada Oregano 8051.
# Implementasi Bubble Sort pada IP Core Oregano 8051

Repositori ini berisi kode sumber, skrip simulasi, dan dokumentasi untuk eksperimen Algoritma Pengurutan Data (Bubble Sort) pada arsitektur mikrokontroler 8051 menggunakan platform IP Core Oregano (berbasis VHDL). 

Proyek ini disusun sebagai bagian dari pemenuhan Tugas Akhir Praktikum Organisasi Komputer.

## Identitas Kelompok (Kelas ELA)
Departemen Ilmu Komputer dan Elektronika, Universitas Gadjah Mada.
* M. Altof (24/542271/PA/23021)
* Rizqi Ageng Rinando (24/545013/PA/23149)
* Muhammad Ridwan (24/543440/PA/23087)
* Azka Tunggul Widita (24/543536/PA/23093)
* Eldy Biru Samudera (24/545239/PA/23165)

## Deskripsi Proyek
Eksperimen ini bertujuan untuk menyimulasikan dan menganalisis perilaku low-level hardware (Register Transfer Level) dari prosesor 8051 saat mengeksekusi instruksi perulangan, percabangan bersyarat, dan pembandingan ALU. 

Pengujian dilakukan dalam dua skenario arsitektural:
1. Memori Internal (GPRAM): Pengurutan data menggunakan instruksi MOV standar.
2. Memori Eksternal (RAMX): Modifikasi pengurutan data menggunakan instruksi MOVX untuk menganalisis efisiensi siklus mesin dan mekanisme routing bus data eksternal.

## Struktur Repositori
```text
orkom-oregano8051-bubblesort/
+-- README.md
+-- src/
|   +-- bubble_sort_ext.asm    # Kode Assembly untuk RAM Eksternal
|   +-- bubble_sort_int.asm    # Kode Assembly untuk RAM Internal
|   +-- converter.py           # Skrip konversi .hex ke .dua
+-- scripts/
|   +-- mc8051_compile.do      # Skrip ModelSim untuk kompilasi VHDL
|   +-- mc8051_sim.do          # Skrip ModelSim untuk menjalankan testbench
|   +-- mc8051_wave.do         # Skrip ModelSim untuk memuat konfigurasi waveform
+-- results/
|   +-- Gambar screenshot Keil (bukti 0 Error).png
|   +-- Gambar screenshot Tabel RAM Internal (bukti data terurut).png
|   +-- Gambar screenshot Tabel RAMX Eksternal (bukti data terurut modifikasi).png
|   +-- Gambar screenshot Waveform (Kondisi Awal).png
|   +-- regs.log               # Log register keluaran ModelSim
+-- report/
    +-- Laporan Akhir.pdf      # Laporan komprehensif format IEEE
    +-- Langkah Eksperimen.pdf # Dokumentasi langkah pengujian
