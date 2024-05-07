import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

import '../model/datas.dart';
import 'constants.dart';
import 'detailsview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/back.jpg"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[header(), swipePagerBody(context)],
        )),
      ),
    );
  }

  SizedBox swipePagerBody(BuildContext context) {
    return SizedBox(
      height: 570,
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: Swiper(
          itemCount: kings.length,
          fade: 0.3,
          itemWidth: MediaQuery.of(context).size.width - 2 * 64,
          layout: SwiperLayout.STACK,
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  activeSize: 13,
                  activeColor: Colors.yellow.shade300,
                  space: 10)),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                onKingCardClicked(context, index);
              },
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 120,
                      ),
                      SizedBox(
                        height: 400,
                        child: KingCard(index),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Hero(
                          tag: kings[index].position,
                          child: imageContainer(
                              kings[index].iconImage.toString(), true)),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void onKingCardClicked(BuildContext context, int index) {
    Navigator.push(
        context,
        PageRouteBuilder(
          opaque: false,
          pageBuilder: (context, a, b) => DetailsView(
            kingInfo: kings[index],
          ),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ));
  }

  Card KingCard(int index) {
    return Card(
      margin: EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 8,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Text(
              kings[index].name.toString(),
              style: const TextStyle(
                  fontSize: 28,
                  fontFamily: 'Avenir',
                  color: Color(0xff47455f),
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.none),
              textAlign: TextAlign.left,
            ),
            Text(
              kings[index].date.toString(),
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Avenir',
                  color: primaryTextColor,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Row(
                children: [
                  Text(
                    "Know more",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Avenir',
                        color: secondaryTextColor,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: secondaryTextColor,
                    size: 18,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding header() {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text(
                'Explore',
                style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 40,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Ancient Egypt',
                style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    color: Color(0x7cdbf1ff),
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Container imageContainer(String imagePath, bool curved) {
  return Container(
    width: 160,
    height: 230,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 20,
          offset: Offset(-15, 25),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(curved ? 20 : 0),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    ),
  );
}
