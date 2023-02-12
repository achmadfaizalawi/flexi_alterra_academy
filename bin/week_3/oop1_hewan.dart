//Membuat class 'Hewan' sebagai abstract class
/*
  Class ini digunakan sebagai tempat untuk menyimpan berat dari hewan.
  Didalam kelas ini akan ada perhitungan dimana setiap ada 'hewan' baru yang dideklarasikan,
  nilai dari 'berat'nya akan ditambahkan dengan nilai 'berat' sebelumnya.
  Method 'totalBerat' digunakan untuk menghitung total dari 'beratBadan'.
*/
abstract class Hewan{
  //Deklarasi variabel untuk menampung total berat badan dari hewan.
  double beratBadan = 0;

  //Deklarasi method untuk menghitung total dari 'beratBadan'.
  void totalBerat(double berat){
    //Deklarasi agar nilai 'berat' dijumlahkan dengan nilai 'beratBadan'.
    beratBadan += berat;
  }
}