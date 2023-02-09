//Task Number 2
void main(){
  //Inisialisasi variabel List dan nilai masukan pada fungsi 'newList'
  final List listNested = newList(2, 2);
  //Inisialisasi variabel List untuk menampung data fungsi 'listMakanan'
  late List makanan; 
  //Inisialisasi nilai masukan kedalam fungsi 'listMakanan'
  makanan = listMakanan(listNested, 0, 0, "Mie Rebus");
  makanan = listMakanan(listNested, 0, 1, "Mie Goreng");
  makanan = listMakanan(listNested, 1, 0, "Ayam Bakar");
  makanan = listMakanan(listNested, 1, 1, "Ayam Goreng");
  //Menampilkan hasil setelah memberikan nilai masukan pada List 'makanan'
  print("List yang dibuat: ");
  print(makanan);

  //Inisialisasi variabel bertipe data Map
  late final Map mapMakanan = Map ();
  //Memberikan nilai masukan kedalam Map 'mapMakanan' dari List 'makanan'
  mapMakanan["Olahan Mie"] = makanan[0];
  mapMakanan["Olahan Ayam"] = makanan[1];
  //Menampilkan hasil setelah memberikan nilai masukan pada Map 'mapMakanan'
  print("\nMap yang dibuat: ");
  print(mapMakanan);
}

//Membuat list multidimensi dengan parameter jumlah sublist dan jumlah elemen didalam sublist
List newList(final int jumlahSubList, final int jumlahElementSubList){
  /*
  Catatan:
  1. 'jumlahSubList' = untuk membuat banyaknya sublist pada List.
  2. 'jumlahElementSubList' = untuk membuat banyaknya element didalam sublist pada List.
  3. "null" hanya sebagai parameter untuk menentukan jenis tipe data element didalam sublist.
  */
  var tList = List.generate(jumlahSubList, (i) => List.generate(jumlahElementSubList, (i) => "null", growable: true), growable: true);
  return tList;
}

//Menambahkan nilai masukan pada element setiap sublist
List listMakanan(final List inputList, final int indeksData, final int indeksSubData, final String nilaiMasukan){
  /*
  Catatan:
  1. 'inputList' = sebagai pemanggil List yang akan diberi nilai masukan.
  2. 'indeksData' = sebagai pemanggil indeks sublist mana yang akan diberi nilai masukan.
  3. 'indeksSubData' = sebagai pemanggil indeks element sublist mana yang akan diberi nilai masukan.
  4. 'nilaiMasukan' = sebagai tempat untuk menyimpan nilai masukan.
  */
  final List listBaru = inputList;
  listBaru[indeksData][indeksSubData] = nilaiMasukan;
  return listBaru;
}