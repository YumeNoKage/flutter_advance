import 'package:flutter/material.dart';
import 'package:flutter_advance/theme.dart';

class Space {
  int id;
  String name;
  String imageUrl;
  String price;
  String location;
  String rating;

  Space({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.location, 
    required this.rating, 
  });
}

class SpaceCard extends StatelessWidget {
  
  const SpaceCard({Key? key, required this.space}) : super(key: key);

  final Space space;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: SizedBox(
            // height: 130,
            width: 110,
            child: Stack(
              children: [
                Image.asset(space.imageUrl),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30)
                      )
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/icon_star.png', width: 18, height: 18),
                        Text(space.rating, style: whiteTextStyle.copyWith(
                          fontSize: 13,
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(width:20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(space.name, style: blackTextStyle.copyWith(fontSize: 16)),
            const SizedBox(height: 2),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: space.price, style: purpleTextStyle.copyWith(fontSize:16)),
                  TextSpan(text: ' / month', style: greyTextStyle.copyWith(fontSize:16)),
                ]
              ) 
            ),
            const SizedBox(height: 16),
            Text(space.location, style: greyTextStyle)
          ]
        )
      ],
    );
  }
}