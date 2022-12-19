import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:doktors_appks/tema.dart';
import 'package:doktors_appks/components/search_bar.dart';
import 'package:doktors_appks/components/category.dart';
import 'package:doktors_appks/components/dokters.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset('assets/images/menu.svg'),
                    SvgPicture.asset('assets/icons/profile.svg'),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  'Temukan Dokter \n Kesukaanmu!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Kategori',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Dokter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          CategoryCard(
              'Dokter\nGigi', 'assets/icons/dental_surgeon.png', kBlueColor),
          SizedBox(
            width: 10,
          ),
          CategoryCard('Dokter\nJantung', 'assets/icons/heart_surgeon.png',
              kYellowColor),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
              'Dokter\nMata', 'assets/icons/eye_specialist.png', kOrangeColor),
          SizedBox(
            width: 10,
          ),
          CategoryCard('Dokter\nKulit', 'assets/icons/kulit.png', kKulitColor),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  buildDoctorList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DoctorCard(
            'Dr. Jennie Jendut',
            'Ahli Jantung - Heart Hospitals',
            'assets/images/doctor1.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Dr. Chongah Kim',
            'Ahli Gigi - Dental Hospitals',
            'assets/images/doctor2.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Dr. Jichu Rabbit Kim',
            'Ahli Mata - Eye Hospitals',
            'assets/images/doctor3.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Dr. Lilis Manobal',
            'Ahli Kulit - Skin Hospitals',
            'assets/images/doctor4.png',
            kKulitColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
