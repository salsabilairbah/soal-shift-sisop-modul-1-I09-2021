NOMER 1
no. a
- Find way to cut words/sentence until "error"
- Use cat to take text that in file syslog.log
- Use cut to cut bit/character so it only show output words/sentence that we want

no.b 
- Use grep to make it easier to find the word / pattern to be displayed
- fetches a pattern named Error from an existing path
- Then cut in point field 2 until dilimiter slash
- And cut again from point field 1 until the open bracket
- After that sort
- use uniq to count the uniqueness in the data
- last sort descending

NOMER 2
no. a
-Membuat program awk sesuai logika (error)
-mendeteksi error (hasil integer -2147483647, float -nan)
-mengecek data apakah data yang dimaksud sesuai
-data tidak sesuai karena setiap data dipisahkan dengan tab, sehingga tidak bisa manual (perlu file separate)
-menggunakan logika yang sama tetapi menggunakan file separate (benar)

no. b
-Mencari cara untuk membandingkan tanggal
-tanggal pada data berbentuk string, sehingga mencari cara membandingkan beberapa character pada string
-menggunakan substr untuk membandungkan str tanggal pada 2 index terakhir
-jika diprint langsung, akan menampilkan nama yang sama
-mencari tahu cara agar data tidak sama (index array bisa berisi string, sehingga dimasukkan array agar jika sama nilai tidak berubah)
-menampilkan array yang isinya string nama

no.c
-Mencari perulangan, branching, dan array pada linux (ternyata mirip C)
-Memikirkan algoritma yang cocok dan tidak panjang
-kekeliruan syntax, perlu semicolon setelah fungsi dalam for
-menggunakan algo yang sama (benar)

no. d
-Memikirkan algo yang pas
-hasil benar (mirip no. 3)

no. e
-mencoba memasukkan setiap awk program ke file hasil.txt
-ternyata semua program awk perlu dibuat program bash dulu
-membuat nano untuk menampung semua awk program, kemudian di run dan menghasilkan hasil.txt
