import 'package:flutter/material.dart';
import 'package:wisata_mobile_6/models/destination_model.dart';
import 'package:wisata_mobile_6/utils/const.dart';
import 'package:wisata_mobile_6/widgets/popular_destination.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;

  List<IconData> icons = [
    Icons.home_filled,
    Icons.bookmark_border_rounded,
    Icons.shopping_cart_outlined,
    Icons.person_outline_outlined
  ];

  List<TravelDestination> populer = listDestination
      .where((element) => element.category == 'populer')
      .toList();

  List<TravelDestination> rekomendasi = listDestination
      .where((element) => element.category == 'rekomendasi')
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(children: [
        buildAppBar(),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tempat Populer',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(right: 15),
          child: Row(
            children: List.generate(
              populer.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () {},
                  child: PopularDestination(
                    destination: populer[index],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rekomendasi untuk kamu',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: 15),
            child: Row(
                children: List.generate(
                    populer.length,
                    (index) => Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () {},
                            child: PopularDestination(
                              destination: populer[index],
                            ),
                          ),
                        )))),
      ]),
    );
  }
}

Widget buildAppBar() {
  return Container(
    height: 120,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 5))
      ],
    ),
    child: SafeArea(
        child: Center(
            child: Padding(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: buildSearchButton(),
    ))),
  );
}

Widget buildSearchButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
    decoration: BoxDecoration(
        color: kButtonColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 5))
        ]),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Cari Destinasi...',
        hintStyle: TextStyle(
          color: Colors.white54,
          fontSize: 18,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white54,
          size: 28,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 12),
      ),
      style: TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
}
