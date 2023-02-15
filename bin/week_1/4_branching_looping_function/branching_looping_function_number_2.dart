//Number 2
void main(){
  //Memanggil dan menampilkan hasil pengembalian fungsi "hitungFaktorial"
  print("Nilai Faktorial 10: ${hitungFaktorial(10)}");
  print("Nilai Faktorial 20: ${hitungFaktorial(20)}");
  print("Nilai Faktorial 30: ${hitungFaktorial(30)}");
}

//Inisialisasi fungsi untuk menghitung nilai faktorial
double hitungFaktorial(final double nilaiFaktorial){
  /*
  Fungsi akan menghitung nilai faktorial dengan perulangan for
  Nilai "faktorial" akan dikalikan dengan nilai "kelipatan" yang increment hingga == "nilaiFaktorial"
  Rumusnya yaitu: faktorial = faktorial x kelipatan 
  */

  //Inisialisasi variabel untuk menampung nilai faktorial
  double faktorial = 1;
  //Inisialisasi perulangan for untuk looping perhitungan nilai faktorial
  for(double kelipatan = 1; kelipatan <= nilaiFaktorial; kelipatan++){
    //Inisialisasi rumus untuk menghitung faktorial kedalam program
    faktorial *=kelipatan; //Bisa juga dengan faktorial=faktorial*kelipatan
  }
  //Mengembalikan nilai faktorial kedalam fungsi
  return faktorial;
}