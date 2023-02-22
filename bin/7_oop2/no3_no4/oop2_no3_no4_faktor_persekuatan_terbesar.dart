import 'oop2_no3_no4_matematika.dart';

//Deklarasi class untuk menghitung nilai FPB, class ini akan mengambil seluruh method class 'Matematika'.
class FaktorPersekutuanTerbesar implements Matematika{
  //Inisialisasi variabel dengan enkapsulasi agar menjadi variabel privat.
  int? _xFpb;
  int? _yFpb;
  //Membuat setter agar nilai variabel privat bisa diganti.
  set setXFpb(value) => _xFpb = value;
  set setYFpb(value) => _yFpb = value;
  //Membuat getter untuk mengambil nilai variabel privat.
  int get xFpb => _xFpb ?? 0;
  int get yFpb => _yFpb ?? 0;   
  //Inisialisasi constructor yang menerima dua parameter, parameter ini akan digunakan untuk menghitung FPB.
  FaktorPersekutuanTerbesar(int valueX, int valueY){
    //Inisialisasi dua parameter tersebut kedalam setter.
    setXFpb = valueX;
    setYFpb = valueY;
    //Memanggil method 'hasil()' yang dapat menghitung FPB dari nilai yang didapatkan sebelumnya.
    hasil();
  }
  //Method 'hasil()' merupakan method yang wajib diambil dari superclass nya yaitu class 'Matematika'.
  //Method 'hasil()' akan memproses input dari constructor agar menjadi output berupa nilai FPB.
  @override
  int hasil() {
    //Deklarasi variabel 'a' dan variabel 'b' dengan inisialisasi yang diambil dari getter.
    //Deklarasi variabel 'i' sebagai parameter cadangan untuk perhitungan.
    int a = xFpb;
    int b = yFpb;
    int i;
    if(a > b){
      i = a;
      a = b;
      b = i;
    }
    while(a > 0){
      i = b % a;
      b = a;
      a = i;
    }
    return b;
  }
} 