import 'dart:io';

void main(){
  int? number1,number2;
  String process;
  print("Hesap Makinesi\n-------------- ");
  print("Bir sayı Giriniz : ");
  number1=int.parse(stdin.readLineSync()!);
  print("İkinci sayıyı giriniz : ");
  number2=int.parse(stdin.readLineSync()!);
  print("Lütfen Yapmak istediğiniz işlemi seçiniz : \n Toplama = + \n Çıkarma = - \n Çarpma = * \n Bölme = / ");

  process=stdin.readLineSync()!;

  if(process == "+" ){
    int sonuc=topla(number1, number2);
    print(sonuc);
  }
  else if(process == "-" ){
    int sonuc=cikar(number1, number2);
    print(sonuc);
  }
  else if(process == "*" ){
    int sonuc=carpma(number1, number2);
    print(sonuc);
  }
  else if(process == "/" ){
    double sonuc=bolme(number1, number2);
    print(sonuc);
  }
  else{
    print("Hatalı Seçim Yaptınız");
  }

}
//Toplama
int topla(int number1,int number2){
  int toplam=0;
  toplam=number1+number2;
  return toplam;
}
//Çıkarma
int cikar(int number1,int number2){
  int cikarma=0;
  if(number1 >= number2){
    cikarma=number1-number2;
  }
  if(number2 > number1){
    cikarma=number2-number1;
  }
  return cikarma;
}
//Çarpma
int carpma(int number1,int number2){
  int carpim=0;
  carpim= number1 * number2;
  return carpim;
}
//Bölme
double bolme(int number1,int number2){
  double s1,s2,sonuc;
  s1=number1.toDouble();
  s2=number2.toDouble();
  sonuc=s1/s2;
  return sonuc;
}