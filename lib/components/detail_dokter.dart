import 'package:flutter/material.dart';
import 'package:doktors_appks/tema.dart';

class DetailDokter extends StatelessWidget {
  var _description;

  DetailDokter(this._description);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Dokter Jennie adalah ahli bedah jantung teratas di Rumah Sakit Heart. Dia telah melakukan lebih dari 100 operasi yang sukses dalam 3 tahun terakhir.\nDia telah meraih beberapa penghargaan atas kontribusinya yang luar biasa di bidangnya sendiri. Dia tersedia untuk konsultasi pribadi untuk jadwal tertentu.',
        style: TextStyle(
          color: kTitleTextColor.withOpacity(0.7),
          height: 1.6,
        ),
      ),
    );
  }
}
