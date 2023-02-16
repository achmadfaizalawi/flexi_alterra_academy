import 'oop2_no3_no4_faktor_persekuatan_terbesar.dart';
import 'oop2_no3_no4_kelipatan_persekutuan_terkecil.dart';

void main(){
  //Deklarasi variabel const 'nilaiA' dan 'nilaiB' yang akan dihitung nilai 'KPK' dan 'FPB' nya.
  const int nilaiA = 16;
  const int nilaiB = 40;

  //Memanggil properti class dengan deklarasi objeknya berupa 'operationKpk'.
  //Objek 'operationKpk' akan diisi dengan deklarasi class yang meminta dua parameter untuk dihitung KPK nya.
  KelipatanPersekutuanTerkecil operationKpk = KelipatanPersekutuanTerkecil(nilaiA, nilaiB);
  //Menampilkan hasil perhitungan dari class dengan memanggil method 'hasil()'.
  print("KPK dari ($nilaiA) dan ($nilaiB) = ${operationKpk.hasil()}");

  //Memanggil properti class dengan deklarasi objeknya berupa 'operationFpb'.
  //Objek 'operationFpb' akan diisi dengan deklarasi class yang meminta dua parameter untuk dihitung FPB nya.
  FaktorPersekutuanTerbesar operationFpb = FaktorPersekutuanTerbesar(nilaiA, nilaiB);
  //Menampilkan hasil perhitungan dari class dengan memanggil method 'hasil()'.
  print("FPB dari ($nilaiA) dan ($nilaiB) = ${operationFpb.hasil()}");
}