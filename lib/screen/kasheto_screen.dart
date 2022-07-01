import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/pages/components/carousel.dart';
import 'package:web_portfolio/pages/components/carousel_items.dart';
import 'package:web_portfolio/pages/components/header.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';
import 'package:web_portfolio/utils/text.dart';

class KashetoScreen extends StatelessWidget {
  const KashetoScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Carousel(carouselItems: kashetoCarousel),
            SizedBox(
              height: 50,
            ),
            Text(
              "ABOUT KASHETO APP",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                height: 1.3,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                HelperText.kashetoSummary,
                textAlign: TextAlign.center,
                style: GoogleFonts.oswald(
                  color: kPrimaryColor,
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
            ScreenHelper(
              desktop: featureBlock(
                kDesktopMaxWidth,
                imageUrl: k1image,
                title1: k1t1,
                title2: k1t2,
                body1: k1b1,
                body2: k1b2,
              ),
              tablet: featureBlock(
                kTabletMaxWidth,
                imageUrl: k1image,
                title1: k1t1,
                title2: k1t2,
                body1: k1b1,
                body2: k1b2,
              ),
              mobile: featureBlock(
                getMobileMaxWidth(context),
                imageUrl: k1image,
                title1: k1t1,
                title2: k1t2,
                body1: k1b1,
                body2: k1b2,
              ),
            ),
            ScreenHelper(
              desktop: featureBlock(
                kDesktopMaxWidth,
                imageUrl: k2image,
                title1: k2t1,
                title2: k2t2,
                body1: k2b1,
                body2: k2b2,
              ),
              tablet: featureBlock(
                kTabletMaxWidth,
                imageUrl: k2image,
                title1: k2t1,
                title2: k2t2,
                body1: k2b1,
                body2: k2b2,
              ),
              mobile: featureBlock(
                getMobileMaxWidth(context),
                imageUrl: k2image,
                title1: k2t1,
                title2: k2t2,
                body1: k2b1,
                body2: k2b2,
              ),
            ),
            ScreenHelper(
              desktop: featureBlock(
                kDesktopMaxWidth,
                imageUrl: k3image,
                title1: k3t1,
                title2: k3t2,
                body1: k3b1,
                body2: k3b2,
              ),
              tablet: featureBlock(
                kTabletMaxWidth,
                imageUrl: k3image,
                title1: k3t1,
                title2: k3t2,
                body1: k3b1,
                body2: k3b2,
              ),
              mobile: featureBlock(
                getMobileMaxWidth(context),
                imageUrl: k3image,
                title1: k3t1,
                title2: k3t2,
                body1: k3b1,
                body2: k3b2,
              ),
            ),
            ScreenHelper(
              desktop: featureBlock(
                kDesktopMaxWidth,
                imageUrl: k4image,
                title1: k4t1,
                title2: k4t2,
                body1: k4b1,
                body2: k4b2,
              ),
              tablet: featureBlock(
                kTabletMaxWidth,
                imageUrl: k4image,
                title1: k4t1,
                title2: k4t2,
                body1: k4b1,
                body2: k4b2,
              ),
              mobile: featureBlock(
                getMobileMaxWidth(context),
                imageUrl: k4image,
                title1: k4t1,
                title2: k4t2,
                body1: k4b1,
                body2: k4b2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget featureBlock(double width,
    {String imageUrl, String title1, String title2, String body1, body2}) {
  return Center(
    child: LayoutBuilder(
      builder: (context, constraints) {
        return ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          defaultScale: false,
          child: Container(
            child: Flex(
              direction:
                  constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
              children: [
                // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Image.asset(
                    imageUrl,
                    // "assets/ios.png",
                    // Set width for image on smaller screen
                    width: constraints.maxWidth > 720.0 ? null : 350.0,
                  ),
                ),
                Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title1,
                        style: GoogleFonts.oswald(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                          height: 1.3,
                          fontSize: 30.0,
                        ),
                      ),
                      Text(
                        body1,
                        style: TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title2,
                        style: GoogleFonts.oswald(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                          height: 1.3,
                          fontSize: 30.0,
                        ),
                      ),
                      Text(
                        body2,
                        style: TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}
