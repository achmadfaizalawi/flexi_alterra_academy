import 'oop1_hewan.dart';

//Membuat class untuk memproses hewan kedalam mobil.
/*
  'kapasitas' digunakan sebagai total berat hewan yang dapat dimasukan kedalam mobil.
  'muatan' digunakan sebagai tempat untuk menyimpan nama hewan yang dimasukan kedalam mobil.

  'tambahMuatan' digunakan untuk menerima 'hewan' yang akan dimasukan kedalam mobil beserta beratnya,
  method ini juga digunakan sebagai pemroses kondisi apakah hewan akan dimasukan kedalam mobil atau tidak,
  - Jika 'beratHewan' + 'beratBadan' <= kapasitas mobil, maka hewan akan dimasukan kedalam mobil,
  - Jika 'beratHewan' + 'beratBadan' == kapasitas mobil, maka hewan akan dimasukan kedalam mobil,
  - Jika 'beratHewan' + 'beratBadan' >= kapasitas mobil, maka hewan tidak akan dimasukan kedalam mobil.
  Saat proses pengecekan, 
  - Apabila hewan dapat dimasukan kedalam mobil, ada pesan bahwa hewan telah dimasukan kedalam mobil.
  - Apabila hewan gagal dimasukan kedalam mobil, ada pesan bahwa hewan melebihi kapasitas maksimal mobil.
  - Apabila 'beratBadan' == 'kapasitas', ada pesan bahwa kapasitas mobil telah penuh.
*/
class Mobil extends Hewan{
  //Deklarasi variabel kapasitas maksimal berat hewan didalam mobil.
  double kapasitas = 500;
  //Deklarasi List untuk menyimpan nama hewan yang dimasukan kedalam mobil.
  List<String> muatan = List.empty(growable: true);

  //Method yang digunakan untuk menerima hewan yang dimasukan kedalam mobil.
  void tambahMuatan(String isiMuatan, double beratHewan){
    //Proses pengecekan kondisi apakah hewan akan dimasukan kedalam mobil atau tidak.
    if(beratBadan+beratHewan <= kapasitas){
      //Apabila dimasukan, nama hewan akan dimasukan kedalam list dan beratnya diproses di class 'Hewan'.
      muatan.add(isiMuatan);
      totalBerat(beratHewan);
      //Pesan bahwa hewat dengan berat tersebut telah dimasukan kedalam mobil.
      print("$isiMuatan dengan berat $beratBadan kg ditambahkan kedalam Mobil");
      //Pesan untuk melihat sisa kapasitas mobil setelah hewan dimasukan kedalam mobil.
      print("Kapasitas mobil: $beratBadan kg / $kapasitas kg\n");
      //Proses pengecekan kondisi didalam mobil untuk menampilkan pesan.
      if(beratBadan == kapasitas){
        print("Kapasitas Mobil Telah Penuh!");
      }
    //Proses apabila hewan gagal dimasukan kedalam mobil karena karena beratnya melebihi 'kapasitas'.
    } else{
      print("Melebihi Kapasitas!");
    }
  }

  //Method untuk mengecek banyaknya hewan didalam mobil.
  void totalMuatan(){
    print("Banyaknya hewan didalam mobil: ${muatan.length} hewan");
  }
}