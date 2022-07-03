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

class TicTacToeScreen extends StatelessWidget {
  const TicTacToeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Carousel(carouselItems: tictactoeCarousel),
            SizedBox(
              height: 50,
            ),
            Text(
              "ABOUT TIC TAC TOE GAME APP",
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
                HelperText.tictactoeSummary,
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
                imageUrl: t1image,
                title1: t1t1,
                title2: t1t2,
                body1: t1b1,
                body2: t1b2,
              ),
              tablet: featureBlock(
                kTabletMaxWidth,
                imageUrl: t1image,
                title1: t1t1,
                title2: t1t2,
                body1: t1b1,
                body2: t1b2,
              ),
              mobile: featureBlock(
                getMobileMaxWidth(context),
                imageUrl: t1image,
                title1: t1t1,
                title2: t1t2,
                body1: t1b1,
                body2: t1b2,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ScreenHelper(
              desktop: featureBlock(
                kDesktopMaxWidth,
                imageUrl: t2image,
                title1: t2t1,
                title2: t2t2,
                body1: t2b1,
                body2: t2b2,
              ),
              tablet: featureBlock(
                kTabletMaxWidth,
                imageUrl: t2image,
                title1: t2t1,
                title2: t2t2,
                body1: t2b1,
                body2: t2b2,
              ),
              mobile: featureBlock(
                getMobileMaxWidth(context),
                imageUrl: t2image,
                title1: t2t1,
                title2: t2t2,
                body1: t2b1,
                body2: t2b2,
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
