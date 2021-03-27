#!/bin/bash

awk -F '\t' '

BEGIN {
big = 0;
small1 = 100000;
small2 = 100000;
for (i=0;i<3;i++){
	arr[i] = 0;
}
str[0] = "Home Office";
str[1] = "Consumer";
str[2] = "Corporate";

for (i=0;i<4;i++){
	ar[i] = 0;
}
st[0] = "Central";
st[1] = "East";
st[2] = "South";
st[3] = "West";
}

{
pp = ($21 / ($18 - $21)) * 100;
if (pp >= big) {
	big = pp;
	row = $1;
}

if (substr($3, 7) == "17" && $10 == "Albuquerque") arrr[$7] = 1;

if ($8 == "Home Office") arr[0]++;
else if ($8 == "Consumer") arr[1]++;
else if ($8 == "Corporate") arr[2]++;

if ($13 == "Central") ar[0] = ar[0] + $21;
else if ($13 == "East") ar[1] = ar[1] + $21;
else if ($13 == "South") ar[2] = ar[2] + $21;
else if ($13 == "West") ar[3] = ar[3] + $21;


}

END {

printf("Transaksi terakhir dengan profit percentage terbesar yaitu %d dengan persentase %.2f.\n\n", row, big);

printf("Daftar nama customer di Albuquerque pada tahun 2017 antara lain:\n");
for (i in arrr){
	printf("%s\n", i);
}

for (i=0;i<3;i++){
	if (small1 > arr[i]){
		small1 = arr[i];
		kata = str[i];
	}
}

printf("\nTipe segmen customeryang penjualnnya paling sedikit adalah %s dengan total keuntungan %.2f\n\n", kata, small1);

for (i=0;i<4;i++){
	if (small2 > ar[i]){
		small2 = ar[i];
		kataa = st[i];
	}
}

printf("Wilayah bagian (region) yang memiliki total keuntungan (profit) yang paling sedikit adalah %s dengan total keuntungan %.2f\n\n", kataa, small2);

}' Laporan-TokoShiSop.tsv > hasil.txt






















