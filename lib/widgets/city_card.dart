import 'package:flutter/material.dart';
// import 'package:flutter_advance/models/city.dart';
import 'package:flutter_advance/theme.dart';

class City {
  int id;
  String name;
  String imageUrl;
  bool favorite;

  City({required this.id, required this.name, required this.imageUrl,required this.favorite});
}

class CityCard extends StatelessWidget {
  
  const CityCard({Key? key, required this.city}) : super(key: key);

  final City city;  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: greyBg,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(city.imageUrl, width: 120, height: 102, fit: BoxFit.cover,),
                Align(
                  alignment: Alignment.topRight,
                  child: city.favorite ? Container(
                    width: 50,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30)
                      )
                    ),
                    child: Center(child: Image.asset('assets/images/icon_star.png', width: 22, height:22),)
                  ) : null,
                ),
              ],
            ),
            const SizedBox(height:11,),
            Text(city.name, style: blackTextStyle.copyWith(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}