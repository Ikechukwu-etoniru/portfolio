import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xffF95738);
const Color kBackgroundColor = Color(0xff01162C);
const Color kDangerColor = Color(0xffFF3209);
const Color kCaptionColor = Color(0xffC5DECD);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
