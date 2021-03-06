import 'package:flutter/material.dart';
import 'package:flutter_advance/theme.dart';
import 'package:flutter_advance/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/splash_image.png'),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 50, left: 30, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50, width: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png')
                      )
                    ),
                  ),
                  const SizedBox( height: 30, ),
                  Text('Find Unknwon House \nto Stay and Happy',
                    style: blackTextStyle.copyWith(
                      fontSize: 24
                    )
                  ),
                  const SizedBox(height: 10,),
                  Text('Stop membuang banyak waktu \npada tempat yang tidak habitable',
                    style: greyTextStyle.copyWith(
                      fontSize: 16
                    )
                  ),
                  const SizedBox(height: 40,),
                  SizedBox(
                    width: 210,
                    height: 50,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      },
                      color: purpleColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                      child: Text('Explore Now',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18
                      ))
                    )
                  )
                ]
              ),
            ),
          ]
        ),
      )
    );
  }
}