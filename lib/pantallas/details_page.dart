import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hiperdental_ec/providers/data.dart';
import 'package:hiperdental_ec/utils/constant.dart';

class Details extends StatelessWidget {
  final MouthInfo mouthInfo;

  const Details({Key key, this.mouthInfo});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              mouthInfo.name,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 56,
                                color: primaryTextColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'Hiperdental',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 31,
                                color: primaryTextColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Divider(color: Colors.black38),
                            SizedBox(height: 32),
                            Text(
                              mouthInfo.description ?? '',
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                color: contentTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Divider(color: Colors.black38),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0, left: 20),
                        child: Text(
                          'Galleria',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 25,
                            color: const Color(0xff47455f),
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 25.0,
                      bottom: 25.0,
                    ),
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mouthInfo.images.length,
                      itemBuilder: (context, index) {
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              mouthInfo.images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 25.0,
                color: Colors.black,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
