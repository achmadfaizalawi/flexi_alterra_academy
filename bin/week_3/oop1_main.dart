import 'oop1_mobil.dart';

void main(){
  //Membuat object 'mobil' agar mempermudah deklarasi properti dan method
  var mobil = new Mobil();
  //Deklarasi untuk menambahkan hewan dan beratnya pada mobil
  mobil.tambahMuatan("Sapi", 300);
  mobil.tambahMuatan("Kerbau", 200);
  //Deklarasi untuk melihat banyaknya hewan didalam mobil
  mobil.totalMuatan();
}