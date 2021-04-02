
NUMBER 1

no. a
- Find way to cut words/sentence until "error"
- Use cat to take text that in file syslog.log
- Use cut to cut bit/character so it only show output words/sentence that we want
![1a_sisop](https://user-images.githubusercontent.com/74058892/113434246-cc1d7b00-940a-11eb-8f65-0dd1594b11f5.png)

no.b 
- Use grep to make it easier to find the word / pattern to be displayed
- fetches a pattern named Error from an existing path
- Then cut in point field 2 until dilimiter slash
- And cut again from point field 1 until the open bracket
- After that sort
- use uniq to count the uniqueness in the data
- last sort descending
![1b_sisop](https://user-images.githubusercontent.com/74058892/113434249-cd4ea800-940a-11eb-8848-4e3fea11f494.png)

no.c
- First, to find the users' name, use cut until delimiter open bracket point field 2
- second, cut again until delimiter close bracket in point field 1
- then sort, and use uniq to count the uniqueness in the data
- after thta, we can get the users'name
- next, to calculate the error and info, both use grep
- then just echo the name, info and error
![1c_sisop](https://user-images.githubusercontent.com/74058892/113434250-cde73e80-940a-11eb-8ad1-26fa1c60ad75.png)

no.d
- first, like in 1b, we count the error.
- after that, we have to find the total error and the errorname by using echo and cut until delimiter space in point fiels 1 for totalerror and point field 2 for errorname
- we echo the errorname and totalname
- sed use to insert the data error, count into error_message.csv
![1d_sisop](https://user-images.githubusercontent.com/74058892/113434251-cde73e80-940a-11eb-8609-a6c9a6d20c65.png)

no.e
- like number 1d, first we find the users' name 
- after we get the users' name, we have to get the total info and total error by using cat and grep in each totalinfo and totalerror
- then, echo the user, totalinfo, and totalerror
- sed use to insert the data username, info, and error to user_sttistic.csv
![1e_sisop](https://user-images.githubusercontent.com/74058892/113434252-ce7fd500-940a-11eb-9c1b-23e2f6ac27b6.png)

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
![WhatsApp Image 2021-03-26 at 19 05 07(1)](https://user-images.githubusercontent.com/74058892/112724337-69793a80-8f45-11eb-9762-a8dae42591c2.jpeg)
![WhatsApp Image 2021-03-26 at 19 05 07(2)](https://user-images.githubusercontent.com/74058892/112724344-6d0cc180-8f45-11eb-8ccd-98595a0bef7f.jpeg)
![WhatsApp Image 2021-03-26 at 19 05 07(3)](https://user-images.githubusercontent.com/74058892/112724346-6da55800-8f45-11eb-944c-f5f0999068ab.jpeg)
![WhatsApp Image 2021-03-26 at 19 05 07](https://user-images.githubusercontent.com/74058892/112724347-6ed68500-8f45-11eb-9d36-a3aebccb604d.jpeg)

NUMBER 3
no. a 
- get the picture from website "https://loremflickr.com/320/240/kitten" because there are 23 pictures, we need looping to do that operation from looping 1 until      23 using -wget command and save the logs to the file "Foto.log"
- because the pictures is random and we can get the same picture, we must to delete the same one (2nd looping)
- then, save the pictures with format name "Koleksi_xx" start from "Koleksi_01, Koleksi_02, ..." (3rd looping)
