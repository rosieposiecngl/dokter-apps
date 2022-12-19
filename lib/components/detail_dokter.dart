import 'package:flutter/material.dart';
import 'package:doktors_appks/tema.dart';

class DetailDokter extends StatelessWidget {
  var _description;

  DetailDokter(this._description);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _description,
        style: TextStyle(
          color: kTitleTextColor.withOpacity(0.7),
          height: 1.6,
        ),
      ),
    );
  }
}
