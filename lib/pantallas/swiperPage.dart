import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiperdental_ec/pantallas/details_page.dart';
import 'package:hiperdental_ec/providers/data.dart';
import 'package:hiperdental_ec/utils/constant.dart';

class SwiperPage extends StatelessWidget {
  final _user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${_user.displayName}",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  CircleAvatar(
                    maxRadius: 35,
                    backgroundImage: NetworkImage(_user.photoURL),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Hiperdental',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 44,
                color: Color(0xffffffff),
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              'Odontologia de calidad a tu alcance',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 18,
                color: Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
              height: 500,
              padding: EdgeInsets.only(left: 16),
              child: Swiper(
                onTap: (index) {
                  print(mouths[index].name);
                },
                itemCount: mouths.length,
                itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                layout: SwiperLayout.STACK,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      print('Inkell en acción');
                      Get.to(
                        Details(
                          mouthInfo: mouths[index],
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 100.0,
                            ),
                            Card(
                              elevation: 5.0,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 40.0,
                                  left: 20.0,
                                  bottom: 80.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 100.0),
                                    Text(
                                      mouths[index].name,
                                      style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 38,
                                        color: const Color(0xff47455f),
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Conoce más',
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 18,
                                            color: secondaryTextColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: secondaryTextColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: 36.0,
                          top: 55.0,
                          child: Hero(
                            tag: mouths[index].position,
                            child: Image.asset(
                              mouths[index].iconImage,
                              height: 180.0,
                              alignment: Alignment.center,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
