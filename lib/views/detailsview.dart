import 'package:flutter/material.dart';

import '../model/datas.dart';
import 'FullScreenImageView.dart';
import 'constants.dart';
import 'homepage.dart';

class DetailsView extends StatefulWidget {
  final KingInfo? kingInfo;

  const DetailsView({super.key, this.kingInfo});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 32),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 300,
                  ),
                  Hero(
                    tag: widget.kingInfo!.name.toString(),
                    child: Text(
                      widget.kingInfo!.name.toString(),
                      style: TextStyle(
                          fontSize: 55,
                          fontFamily: 'Avenir',
                          color: primaryTextColor,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Text(
                    widget.kingInfo!.date.toString(),
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Avenir',
                        color: primaryTextColor,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.left,
                  ),
                  const Divider(
                    color: Colors.black38,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 140,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Text(
                        widget.kingInfo!.description.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'Avenir',
                            color: contentTextColor,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                        maxLines: 60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    color: Colors.black38,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Gallery",
                    style: TextStyle(
                        fontSize: 24,
                        overflow: TextOverflow.ellipsis,
                        fontFamily: 'Avenir',
                        color: contentTextColor,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                    maxLines: 40,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.kingInfo!.images!.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            navigateToFullImageView(context, index);
                          },
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.network(
                                  widget.kingInfo!.images![index],
                                  fit: BoxFit.cover,
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 80)
                ],
              ),
            ),
          ),
          Positioned(
              right: -70,
              child: Container(
                height: 340,
                width: 250,
                child: Hero(
                  tag: widget.kingInfo!.position,
                  child: imageContainer(
                      widget.kingInfo!.iconImage.toString(), false),
                ),
              )),
          Positioned(
              top: 60,
              left: 32,
              child: Text(
                widget.kingInfo!.position.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 247,
                    color: Colors.grey.withOpacity(0.2)),
              )),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new))
        ],
      )),
    );
  }

  void navigateToFullImageView(BuildContext context, int index) {
    Navigator.push(
        context,
        PageRouteBuilder(
          opaque: false,
          pageBuilder: (context, a, b) => FullScreenImage(
              imageUrl: widget.kingInfo!.images![index],
              heroTag: widget.kingInfo!.position.toString()),
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
}
