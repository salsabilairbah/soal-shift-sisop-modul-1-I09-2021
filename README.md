![WhatsApp Image 2021-03-26 at 19 05 07(1)](https://user-images.githubusercontent.com/74058892/112724337-69793a80-8f45-11eb-9762-a8dae42591c2.jpeg)
![WhatsApp Image 2021-03-26 at 19 05 07(2)](https://user-images.githubusercontent.com/74058892/112724344-6d0cc180-8f45-11eb-8ccd-98595a0bef7f.jpeg)
![WhatsApp Image 2021-03-26 at 19 05 07(3)](https://user-images.githubusercontent.com/74058892/112724346-6da55800-8f45-11eb-944c-f5f0999068ab.jpeg)
![WhatsApp Image 2021-03-26 at 19 05 07](https://user-images.githubusercontent.com/74058892/112724347-6ed68500-8f45-11eb-9d36-a3aebccb604d.jpeg)
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
