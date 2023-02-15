//Task Number 1
void main() async{
  //Deklarasi variabel List untuk menyimpan hasil perhitungan fungsi 'data'
  final List newData = data(1, 10);
  //Deklarasi variabel List untuk menyimpan hasil perhitungan fungsi 'listData'
  final List kaliData = await listData(newData, 5);

  //Menampilkan hasil List baru
  print("List Awal  : $newData");
  //Menampilkan hasil List baru yang telah dikalikan dengan pengali
  print("List Hasil : $kaliData");
}

//Inisialisasi fungsi untuk membuat List baru secara increment
List data(int angkaAwal, int angkaAkhir) {
  //Deklarasi variabel 'dataAngka' untuk menyimpan List
  final List dataAngka = List.empty(growable: true);

  //Perulangan secara increment yang dimulai dari 'angkaAwal' hingga 'angkaAkhir'
  for(angkaAwal; angkaAwal <= angkaAkhir; angkaAwal++){
    //Inisialisasi hasil perulangan kedalam List 'angkaAwal'
    dataAngka.add(angkaAwal);
  }
  //Mengembalikan hasil perhitungan ke fungsi 'data'
  return dataAngka;
}

//Inisialisasi fungsi untuk mengalikan isi List dengan nilai pengali
Future listData(final List listData, final int pengali) async{
  //Deklarasi variabel 'newList' untuk menyimpan List baru
  final List newList = List.empty(growable: true);
  /*
  1. Perulangan untuk mengalikan List 'newData' pada void main dengan nilai 'pengali'.
  2. Perulangan dilakukan dengan mendelay terlebih dahulu program.
  3. Setelah 2 detik, perulangan akan mengalikan isi List 'newData' dengan 'pengali'.
  4. Ditambahkan 'await' agar program menunggu delay terlebih dahulu sebelum lanjut ke proses selanjutnya.
  */
  await Future.delayed(Duration(seconds: 2), () {
    for(int i in listData){
      //Deklarasi variabel 'hasil' untuk menyimpan hasil kali isi List 'newData' dengan 'pengali'
      final int hasil = i*pengali;
      //Inisialisasi hasil perulangan kedalam List 'newList'
      newList.add(hasil);
    }
  });
  //Mengembalikan hasil perhitungan ke fungsi 'listData'
  return newList;
}