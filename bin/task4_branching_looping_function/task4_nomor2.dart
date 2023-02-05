//Nomor 2
void main(){
  print("Kelipatan dari 10 adalah: ${hitungfaktorial(10)}");
  print("Kelipatan dari 20 adalah: ${hitungfaktorial(20)}");
  print("Kelipatan dari 30 adalah: ${hitungfaktorial(30)}");
}

double hitungfaktorial(int nilaifaktorial){
  double faktorial = 1;
  for(double kelipatan = 1; kelipatan <= nilaifaktorial; kelipatan++){
    faktorial *=kelipatan;
  }
  return faktorial;
}