//Deklarasi 'BangunRuang' sebagai abstract class agar tidak bisa diakses secara langsung.
abstract class BangunRuang{
  //Inisialisasi variabel dengan enkapsulasi agar menjadi variabel privat.
  double? _panjang;
  double? _lebar;
  double? _tinggi;
  //Membuat setter agar nilai variabel privat bisa diganti.
  set setPanjang(double value) => _panjang = value;
  set setLebar(double value) => _lebar = value;
  set setTinggi(double value) => _tinggi = value;
  //Membuat getter untuk mengambil nilai variabel privat.
  double get panjang => _panjang ?? 0;
  double get lebar => _lebar ?? 0;
  double get tinggi => _tinggi ?? 0;
  //Inisialisasi constructor agar secara langsung menjalankan bagian ini saat class dideklarasikan.
  BangunRuang(){
    //Memanggil method 'volume' agar method tersebut secara langsung dijalankan bersamaan dengan constructor. 
    volume();
  }
  //Membuat method dengan return 0 agar bisa diproses dengan @overide di class turunannya.
  double volume(){
    return 0;
  }
}