//Number_1
void main(){
  //Memanggil dan menampilkan hasil pengembalian nilai fungsi "cekIndeksNilai"
  print("Indeks Nilai: ${cekIndeksNilai(90)}");
  print("Indeks Nilai: ${cekIndeksNilai(50)}");
  print("Indeks Nilai: ${cekIndeksNilai(30)}");
  print("Indeks Nilai: ${cekIndeksNilai(0)}");
}

//Inisialisasi fungsi untuk pengecekan indeks nilai
String cekIndeksNilai(final num nilai){
  /*
  Pengecekan indeks nilai dengan percabangan.
  - Jika nilai > 70 maka mendapat indeks A,
  - Jika nilai > 40 maka mendapat indeks B,
  - Jika nilai > 0 maka mendapat indeks C,
  - Selain dari nilai tersebut, maka akan menghasilkan teks kosong.
  */

  //Inisialisasi variabel untuk menampung string indeks nilai
  final String? indeksNilai;
  //Pengecekan indeks nilai dengan percabangan
  if(nilai > 70){
    indeksNilai = "A";
  } else if(nilai > 40){
    indeksNilai = "B";
  } else if(nilai > 0){
    indeksNilai = "C";
  } else {
    indeksNilai = "Teks Kosong";
  }
  //Mengembalikan indeks nilai kedalam fungsi
  return indeksNilai;
}