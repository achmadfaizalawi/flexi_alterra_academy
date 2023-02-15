import 'oop2_no1_no2_bangun_ruang.dart';

//Deklarasi class 'Kubus' sebagai subclass 'BangunRuang' untuk menghitung volume kubus.
class Kubus extends BangunRuang{
  /*
  1. Inisialisasi variabel '_sisi' dengan enkapsulasi agar menjadi variabel privat.
  2. Variabel ini juga akan digunakan didalam rumus volume kubus karena rumus volume kubus: 'sisi*sisi*sisi'.
  */
  double? _sisi;
  //Membuat setter agar nilai variabel privat bisa diganti.
  set setSisi(value) => _sisi = value;
  //Membuat getter untuk mengambil nilai variabel privat.
  double get sisi => _sisi ?? 0;
  /*
  1. Inisialisasi constructor agar secara langsung menjalankan bagian ini saat class dideklarasikan.
  2. Constructor ini menerima parameter 'valueSisi' sebagai nilai 'sisi' untuk menghitung volume kubus.
  */
  Kubus({required double valueSisi}){
    setSisi = valueSisi;
    //Memanggil method 'volume' agar method tersebut secara langsung dijalankan bersamaan dengan constructor.
    volume();
  }
  //Deklarasi '@overide' untuk mengambil method yang telah ada di superclass 'BangunRuang'.
  @override
  double volume(){
    //Inisialisasi rumus untuk menghitung kubus, nilai 'sisi' diambil dari constructor.
    late final double hasil = sisi*sisi*sisi;
    return hasil;
  } 
}