import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/pages/components/carousel.dart';
import 'package:web_portfolio/pages/components/carousel_items.dart';
import 'package:web_portfolio/pages/components/footer.dart';
import 'package:web_portfolio/pages/components/header.dart';
import 'package:web_portfolio/utils/constants.dart';

class WebPortScreen extends StatelessWidget {
  const WebPortScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Carousel(carouselItems: portfolioCarousel),
            SizedBox(
              height: 50,
            ),
            Text(
              "ABOUT MY WEBSITE PORTFOLIO APP",
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
                'What can i say',
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
            Footer(),
          ],
        ),
      ),
    );
  }
}