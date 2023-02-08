//Number 1
void main(){
  //Memanggil dan menampilkan hasil pengembalian nilai fungsi
  print("Luas Lingkaran: ${luasLingkaran(20)}");
}

//Inisialisasi fungsi untuk menghitung luas lingkaran
double luasLingkaran(final double jariJari){
  /*
  Menghitung luas lingkaran dengan menggunakan fungsi
  Rumus luas lingkaran: phi*r*r
  Inisialisasi phi menggunakan 3.14
  */

  //Inisialisasi nilai phi dengan konstanta agar tidak dapat dirubah
  const phi = 3.14;
  //Inisialisasi rumus luas lingkaran kedalam program
  final double luas = phi*jariJari*jariJari;
  //Mengembalikan nilai luas lingkaran ke fungsi
  return luas;
}