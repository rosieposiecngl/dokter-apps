import 'package:flutter/material.dart';
import 'package:doktors_appks/tema.dart';

class ScheduleCard extends StatelessWidget {
  var _title;
  var _description;
  var _date;
  var _month;
  var _year;
  var _bgColor;

  ScheduleCard(this._title, this._description, this._date, this._month,
      this._year, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: _bgColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: _bgColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _date,
                  style: TextStyle(
                    color: _bgColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _month,
                  style: TextStyle(
                    color: _bgColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _year,
                  style: TextStyle(
                    color: _bgColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          title: Text(
            _title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kTitleTextColor,
            ),
          ),
          subtitle: Text(
            _description,
            style: TextStyle(
              color: kTitleTextColor.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
