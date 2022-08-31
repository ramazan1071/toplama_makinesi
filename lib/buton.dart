import 'package:flutter/material.dart';

class Buton extends StatelessWidget {

  final String metin;
  final int dolguRengi;
  final int metinRengi;
  final double metinBoyutu;
  final double borderBoyutu;
  final Function tiklama;


  Buton(
      {required this.metin,
        required this.dolguRengi,
        required this.metinRengi,
        required this.metinBoyutu,
        required this.borderBoyutu,
        required this.tiklama
        });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          tiklama(metin);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(dolguRengi),
            borderRadius: BorderRadius.circular(borderBoyutu),
          ),
          width: 90,
          height: 90,
          child: Center(
              child: Text(
            metin,
            style: TextStyle(fontSize: metinBoyutu, color: Color(metinRengi)),
          )),
        ),
      ),
    );
  }


}
