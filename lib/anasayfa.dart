import 'package:flutter/material.dart';
import 'package:toplama_makinesi/buton.dart';
import 'package:toplama_makinesi/renkler.dart';
class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  //Tutucular
  int sayi1=0;
  int sayi2=0;
  String gosterilecekSayi = "";
  String gecmisSayi = "";
  String sonuc="sonuc";
  String islem="islem";

  //Buton tıklama olayındaki metin alma işlemi
  void tiklama(String butonDeger)
  {
    switch (butonDeger){
      case "AC": {
        sonuc ="";

      }break;
      case "C": {
        int silinenDeger = sonuc.length;
        sonuc = sonuc.substring(0,silinenDeger-1);

      }break;
      case "+": {
        sayi1 = int.parse(gosterilecekSayi);
        sonuc = "";
        islem = butonDeger;

      }break;
      case "=": {
        sayi2 = int.parse(gosterilecekSayi);
        if(islem == "+")
          {
            sonuc = (sayi1+sayi2).toString();
            gecmisSayi = sayi1.toString()+islem.toString()+sayi2.toString();
            gosterilecekSayi="";
          }

      }break;
      case "+/-": { }break;
      default:{ //Rakamlara tıklandığında çalışacak
        sonuc =int.parse(gosterilecekSayi + butonDeger).toString();
      }break;
      }

      setState(() {
        gosterilecekSayi = sonuc;
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hesap Makinesi"),),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: (
        Column(
          children: [
            Container(
                alignment: Alignment(1.0,1.0)
                ,child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,bottom: 8.0),
                  child: Text(gecmisSayi,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.grey),),
                )
            ),
            Container(
                alignment: Alignment(1.0,1.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,bottom: 8.0),
                  child: Text(gosterilecekSayi,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black),
                )
            ),
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Buton(metin: "9", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0,tiklama: tiklama),
                Buton(metin: "8", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "7", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "AC", dolguRengi: clear, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 30.0, tiklama: tiklama),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buton(metin: "6", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "5", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "4", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "C", dolguRengi: clear, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 30.0, tiklama: tiklama),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buton(metin: "3", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "2", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "1", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "+", dolguRengi: digerbuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 30.0, tiklama: tiklama),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buton(metin: "+/-", dolguRengi: digerbuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "0", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "00", dolguRengi: sayibuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 50.0, tiklama: tiklama),
                Buton(metin: "=", dolguRengi: digerbuton, metinRengi: sayiyazi, metinBoyutu: 24.0, borderBoyutu: 30.0, tiklama: tiklama),
              ],
            ),
          ],

        )
        ),
      )


    );
  }
}
