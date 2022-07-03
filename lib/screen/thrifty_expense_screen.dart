import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/pages/components/carousel.dart';
import 'package:web_portfolio/pages/components/carousel_items.dart';
import 'package:web_portfolio/pages/components/footer.dart';
import 'package:web_portfolio/pages/components/header.dart';
import 'package:web_portfolio/screen/kasheto_screen.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';
import 'package:web_portfolio/utils/text.dart';

class ThriftyExpenseScreen extends StatelessWidget {
  const ThriftyExpenseScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Carousel(carouselItems: thriftyExpenseCarousel),
            SizedBox(
              height: 50,
            ),
            Text(
              "ABOUT THRIFTY EXPENSE GAME APP",
              style: GoogleFonts.oswald(
                color: kPrimaryColor,
                fontWeight: FontWeight.w900,
                height: 1.3,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                HelperText.thriftyExpenseSummary,
                textAlign: TextAlign.center,
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "APP FEATURES",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                height: 1.3,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ScreenHelper(
              desktop: featureBlock(
                kDesktopMaxWidth,
                imageUrl: te1image,
                title1: te1t1,
                title2: te1t2,
                body1: te1b1,
                body2: te1b2,
              ),
              tablet: featureBlock(
                kTabletMaxWidth,
                imageUrl: te1image,
                title1: te1t1,
                title2: te1t2,
                body1: te1b1,
                body2: te1b2,
              ),
              mobile: featureBlock(
                getMobileMaxWidth(context),
                imageUrl: te1image,
                title1: te1t1,
                title2: te1t2,
                body1: te1b1,
                body2: te1b2,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ScreenHelper(
              desktop: featureBlock(
                kDesktopMaxWidth,
                imageUrl: te2image,
                title1: te2t1,
                title2: te2t2,
                body1: te2b1,
                body2: te2b2,
              ),
              tablet: featureBlock(
                kTabletMaxWidth,
                imageUrl: te2image,
                title1: te2t1,
                title2: te2t2,
                body1: te2b1,
                body2: te2b2,
              ),
              mobile: featureBlock(
                getMobileMaxWidth(context),
                imageUrl: te2image,
                title1: te2t1,
                title2: te2t2,
                body1: te2b1,
                body2: te2b2,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ScreenHelper(
              desktop: featureBlock(
                kDesktopMaxWidth,
                imageUrl: te3image,
                title1: te3t1,
                title2: te3t2,
                body1: te3b1,
                body2: te3b2,
              ),
              tablet: featureBlock(
                kTabletMaxWidth,
                imageUrl: te3image,
                title1: te3t1,
                title2: te3t2,
                body1: te3b1,
                body2: te3b2,
              ),
              mobile: featureBlock(
                getMobileMaxWidth(context),
                imageUrl: te3image,
                title1: te3t1,
                title2: te3t2,
                body1: te3b1,
                body2: te3b2,
              ),
            ),
            SizedBox(
              height: 50,
            ),
              Footer(),
          ],
        ),
      ),
    );
  }
}
