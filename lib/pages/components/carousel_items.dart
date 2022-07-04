import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/carousel_item_model.dart';
import 'package:web_portfolio/utils/alert.dart';
import 'package:web_portfolio/utils/constants.dart';



List<CarouselItemModel> kashetoCarousel = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "ANDROID & IOS",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          Text(
            "KASHETO\nAPP",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "assets/kasheto.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);

List<CarouselItemModel> tictactoeCarousel = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "ANDROID",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          Text(
            "TIC TAC TOE\nGAME",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "assets/tictactoe.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);

List<CarouselItemModel> thriftyExpenseCarousel = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "ANDROID",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          Text(
            "THRIFTY EXPENSE\nAPP",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "assets/thrifty.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);

List<CarouselItemModel>portfolioCarousel = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "WEB",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          Text(
            "PORTFOLIO\nWEBSITE",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "assets/webport.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);
