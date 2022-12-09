import 'dart:io';

void main() {
  islemFonksiyonu();
}

toplamaFonksiyonu() {
  int toplam;

  print("Lutfen sayi-1 giriniz:\n");
  int? sayi1 = int.parse(stdin.readLineSync()!);
  print("Lutfen sayi-2 giriniz:\n");
  int? sayi2 = int.parse(stdin.readLineSync()!);

  toplam = sayi1 + sayi2;
  print("SONUC= " + toplam.toString());
}

cikarmaFonksiyonu() {
  int cikti;

  print("Lutfen sayi-1 giriniz:\n");
  int? sayi1 = int.parse(stdin.readLineSync()!);
  print("Lutfen sayi-2 giriniz:\n");
  int? sayi2 = int.parse(stdin.readLineSync()!);

  cikti = sayi1 - sayi2;
  print("SONUC= " + cikti.toString());
}

carpmaFonksiyonu() {
  int carpim;

  print("Lutfen sayi-1 giriniz:\n");
  int? sayi1 = int.parse(stdin.readLineSync()!);
  print("Lutfen sayi-2 giriniz:\n");
  int? sayi2 = int.parse(stdin.readLineSync()!);

  carpim = sayi1 * sayi2;
  print("SONUC= " + carpim.toString());
}

bolmeFonksiyonu() {
  var bolum;

  print("Lutfen sayi-1 giriniz:\n");
  int? sayi1 = int.parse(stdin.readLineSync()!);
  print("Lutfen sayi-2 giriniz:\n");
  int? sayi2 = int.parse(stdin.readLineSync()!);

  bolum = sayi1 / sayi2;
  print("SONUC= " + bolum.toString());
}

hataFonksiyonu() {
  print("HATA!!!");
  print("Hatali deger girdiniz!");
}

cikisFonksiyonu() {
  exit(0);
}

islemFonksiyonu() {
  int islem;

  print("Lutfen bir islem seciniz:");
  print("[1]TOPLAMA\n[2]CIKARMA\n[3]CARPMA\n[4]BOLME\n[5]CIKIS");
  islem = int.parse(stdin.readLineSync()!);

  switch (islem) {
    case 1:
      toplamaFonksiyonu();
      islemFonksiyonu();
      break;

    case 2:
      cikarmaFonksiyonu();
      islemFonksiyonu();
      break;

    case 3:
      carpmaFonksiyonu();
      islemFonksiyonu();
      break;

    case 4:
      bolmeFonksiyonu();
      islemFonksiyonu();
      break;

    case 5:
      cikisFonksiyonu();
      break;

    default:
      hataFonksiyonu();
      islemFonksiyonu();
  }
}
