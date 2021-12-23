import 'package:flutter/material.dart';
import 'package:medapp/widgets.dart';

class FocusMode extends StatelessWidget {
  final List<String> swipperData = ["Sunrise", "Sunset", "Breeze", "Sunlight"];
  FocusMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/back.png"),
                fit: BoxFit.cover)),
                child: Container(
                  color: Color(0xffffb773).withOpacity(0.7),
                  child: SafeArea(child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Appbar(swipeData: swipperData),
                        ModeBody(),
                      ],
                    ),
                  )),
                ),
      ),
    );
  }
}
