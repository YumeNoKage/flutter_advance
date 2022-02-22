import 'package:flutter/material.dart';
// import 'package:flutter_advance/models/city.dart';
import 'package:flutter_advance/theme.dart';
import 'package:flutter_advance/widgets/city_card.dart';
import 'package:flutter_advance/widgets/space_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
              // NOTE: TITLE / HEADER
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text('Explore Now', style: blackTextStyle.copyWith(fontSize: 24)),
              ),
              const SizedBox(height: 2,),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text('Mencari kosan yang Unknown', style: greyTextStyle.copyWith(fontSize: 16)),
              ),
              const SizedBox(height: 30,),

              // NOTE: POPULAR CITY
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text('Popular Cities', style: regularTextStyle.copyWith(fontSize: 16)),
              ),

              const SizedBox(height: 16,),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // ignore: prefer_const_literals_to_create_immutables
                  children:[
                    const SizedBox(width: 20,),
                    CityCard(city: City(id: 1,name: 'Jakarta',imageUrl: 'assets/images/city_1.png',favorite: false,),),

                    const SizedBox(width: 20,),
                    CityCard(city: City(id: 2,name: 'Bandung',imageUrl: 'assets/images/city_2.png',favorite: true,),),
                    
                    const SizedBox(width: 20,),
                    CityCard(city: City(id: 3,name: 'Surabaya',imageUrl: 'assets/images/city_3.png',favorite: false,),),
                    
                    const SizedBox(width: 20,),
                    CityCard(city: City(id: 4,name: 'Palembang',imageUrl: 'assets/images/city_4.png',favorite: false,),),
                    
                    const SizedBox(width: 20,),
                    CityCard(city: City(id: 5,name: 'Aceh',imageUrl: 'assets/images/city_5.png',favorite: true,),),
                    
                    const SizedBox(width: 20,),
                    CityCard(city: City(id: 6,name: 'Bogor',imageUrl: 'assets/images/city_6.png',favorite: false,),),
                    const SizedBox(width: 20,),
                  ],
                )
              ),

              const SizedBox(height: 16,),

              // NOTE: RECOMMENDED SPACE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text('Recommended Space', style: regularTextStyle.copyWith(fontSize: 16)),
              ),
              const SizedBox(height: 16,),
              Padding(padding: EdgeInsets.only(left: edge, right: edge), 
                child: Column(
                  children:[
                    SpaceCard(space: Space(id: 1, name: 'Kuretakeso Hott', imageUrl: 'assets/images/space_1.png', price: '52', rating:'4/5', location: 'Bandung, Jawa Barat')),
                    const SizedBox(height: 30,),

                    SpaceCard(space: Space(id: 2, name: 'Roemah Nenek', imageUrl: 'assets/images/space_2.png', price: '11', rating:'5/5', location: 'Seattle, Bogor')),
                    const SizedBox(height: 30,),

                    SpaceCard(space: Space(id: 3, name: 'Darrling How', imageUrl: 'assets/images/space_3.png', price: '20', rating:'3/5', location: 'Jakarta, Indonesia')),
                    const SizedBox(height: 30,),

                    SpaceCard(space: Space(id: 4, name: 'Orang Crown', imageUrl: 'assets/images/space_4.png', price: '552', rating:'5/5', location: 'Halla, Sumatra')),
                    const SizedBox(height: 30,),

                    SpaceCard(space: Space(id: 4, name: 'City of Cactus', imageUrl: 'assets/images/space_5.png', price: '20', rating:'3/5', location: 'Jakarta, Indonesia')),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),
            ],
          )
        ),
      )
    );
  }
}