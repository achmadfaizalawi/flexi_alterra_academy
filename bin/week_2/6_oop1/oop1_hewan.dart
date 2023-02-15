//Membuat class 'Hewan' sebagai abstract class
/*
  Class ini digunakan sebagai tempat untuk menyimpan berat dari hewan.
  Didalam kelas ini akan ada perhitungan dimana setiap ada 'hewan' baru yang dideklarasikan,
  nilai dari 'berat'nya akan ditambahkan dengan nilai 'berat' sebelumnya.
  Method 'totalBerat' digunakan untuk menghitung total dari 'beratBadan'.
*/
abstract class Hewan{
  //Deklarasi variabel untuk menampung total berat badan dari hewan.
  double _beratBadan = 0;
  //Berfungsi untuk mengambil atribut '_beratBadan' yang privat.
  double get beratBadan => _beratBadan;
  //Deklarasi method untuk menghitung total dari 'beratBadan'.
  void totalBerat(double berat){
    //Deklarasi agar nilai 'berat' dijumlahkan dengan nilai 'beratBadan'.
    _beratBadan += berat;
  }
}