import 'oop2_no1_no2_balok.dart';
import 'oop2_no1_no2_kubus.dart';

void main(){
  //Deklarasi class 'Kubus' kedalam variabel 'bangunKubus'.
  Kubus bangunKubus = Kubus(valueSisi: 5);
  //Menampilkan volume 'Kubus' ke layar.
  print("Volume Kubus: ${bangunKubus.volume()} m^3");
  
  //Deklarasi class 'Balok' kedalam variabel 'bangunBalok'.
  Balok bangunBalok = Balok(valuePanjang: 15, valueLebar: 8, valueTinggi: 5);
  //Menampilkan volume 'Balok' ke layar.
  print("Volume Balok: ${bangunBalok.volume()} m^3");
}