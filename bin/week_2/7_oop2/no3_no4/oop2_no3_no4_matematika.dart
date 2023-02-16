//Deklarasi class 'Matematika' sebagai abstract class agar tidak dapat diakses secara langsung.
abstract class Matematika{
  //Deklarasi method 'hasil()' sebagai tempat untuk memproses perhitungan di subclass saat class ini diimplements.
  int hasil(){
    //Return nilai '0' sebagai return sementara, return ini akan diganti di subclass menyesuaikan perhitungannya.
    return 0;
  }
}