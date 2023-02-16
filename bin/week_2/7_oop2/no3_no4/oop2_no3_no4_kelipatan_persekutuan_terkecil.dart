import 'oop2_no3_no4_matematika.dart';

//Deklarasi class untuk menghitung nilai FPB, class ini akan mengambil seluruh method class 'Matematika'.
class KelipatanPersekutuanTerkecil implements Matematika{
  //Inisialisasi variabel dengan enkapsulasi agar menjadi variabel privat.
  int? _xKpk;
  int? _yKpk;
  //Membuat setter agar nilai variabel privat bisa diganti.
  set setXKpk(value) => _xKpk = value;
  set setYKpk(value) => _yKpk = value;
  //Membuat getter untuk mengambil nilai variabel privat.
  int get xKpk => _xKpk ?? 0;
  int get yKpk => _yKpk ?? 0; 
  //Inisialisasi constructor yang menerima dua parameter, parameter ini akan digunakan untuk menghitung KPK.
  KelipatanPersekutuanTerkecil(int valueX, int valueY){
    //Inisialisasi dua parameter tersebut kedalam setter.
    setXKpk = valueX;
    setYKpk = valueY;
    //Memanggil method 'hasil()' yang dapat menghitung KPK dari nilai yang didapatkan sebelumnya.
    hasil();
  }
  //Method 'hasil()' merupakan method yang wajib diambil dari superclass nya yaitu class 'Matematika'.
  //Method 'hasil()' akan memproses input dari constructor agar menjadi output berupa nilai KPK.
  @override
  int hasil() {
    //Deklarasi variabel 'a' dan variabel 'b' dengan inisialisasi yang diambil dari getter.
    //Deklarasi variabel 'i' sebagai parameter cadangan untuk perhitungan.
    int a = xKpk;
    int b = yKpk;
    int i;
    if(a > b){
      i = a;
      a = b;
      b = i;
    }
    for(i = b; i % a != 0 || i % b != 0; i++);
    return i;
  }
}