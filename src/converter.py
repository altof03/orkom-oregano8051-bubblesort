
def konversi_hex_ke_dua(file_input, file_output):
   
    rom = [0] * 65536  

    try:
        with open(file_input, 'r') as f:
            for line in f:
                line = line.strip()
               
                if line.startswith(':') and line[7:9] == '00':
                    length = int(line[1:3], 16)
                    addr = int(line[3:7], 16)
                    
                    for i in range(length):
                        data_byte = int(line[9+(i*2):11+(i*2)], 16)
                        rom[addr + i] = data_byte

        
        with open(file_output, 'w') as f:
            for val in rom:
                f.write(f"{val:08b}\n")
                
        print(f"Sukses! File {file_output} berhasil dibuat.")
        
    except FileNotFoundError:
        print(f"Error: File {file_input} tidak ditemukan di folder ini.")


konversi_hex_ke_dua('BubbleSort.hex', 'mc8051_rom.dua')