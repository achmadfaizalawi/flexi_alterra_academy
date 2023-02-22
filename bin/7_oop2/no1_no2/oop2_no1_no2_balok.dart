import 'oop2_no1_no2_bangun_ruang.dart';

//Deklarasi class 'Balok' sebagai subclass 'BangunRuang' untuk menghitung volume balok.
class Balok extends BangunRuang{
  //Inisialisasi variabel secara named parameter pada constructor agar nilainya bisa dinisialisasikan kedalam setter.
  Balok({required double valuePanjang, required double valueLebar, required double valueTinggi}){
    //Inisialisasi nilai named parameter kedalam setter yang ada didalam class 'BangunRuang'.
    setPanjang = valuePanjang;
    setLebar =  valueLebar;
    setTinggi = valueTinggi;
    volume();
  }
  //Deklarasi '@overide' untuk mengambil method yang telah ada di superclass 'BangunRuang'.
  @override
  double volume(){
    //Inisialisasi rumus untuk menghitung balok, nilai 'sisi' diambil dari constructor.
    late final double hasil = panjang*lebar*tinggi;
    return hasil;
  }
}