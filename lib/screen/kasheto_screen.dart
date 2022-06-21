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
            Container(
              child: ScreenHelper(
                desktop: featureBlock(kDesktopMaxWidth, "assets/ios.png",
                    'grhrhrhrhrrhrhhfhghfhhghghghghghghghghghgghg ghghghghg gfgdhdhd dffjfjg ghgjgjgjg gjgjgjghg ghgjhgjhghg ghghgjgjg gghghfgf dggdgd dgdgdfgf fgvbffghffhruihg gugugigghb'),
                tablet: featureBlock(kTabletMaxWidth, "assets/ios.png",
                    'grhrhrhrhrrhrhhfhghfhhghghghghghghghghghgghg ghghghghg gfgdhdhd dffjfjg ghgjgjgjg gjgjgjghg ghgjhgjhghg ghghgjgjg gghghfgf dggdgd dgdgdfgf fgvbffghffhruihg gugugigghb'),
                mobile: featureBlock(
                    getMobileMaxWidth(context),
                    "assets/ios.png",
                    'grhrhrhrhrrhrhhfhghfhhghghghghghghghghghgghg ghghghghg gfgdhdhd dffjfjg ghgjgjgjg gjgjgjghg ghgjhgjhghg ghghgjgjg gghghfgf dggdgd dgdgdfgf fgvbffghffhruihg gugugigghb'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//       child: ScreenHelper(
//         desktop: featureBlock(kDesktopMaxWidth),
//         tablet: featureBlock(kTabletMaxWidth),
//         mobile: featureBlock(getMobileMaxWidth(context)),
//       ),
//     );

Widget featureBlock(double width, String imageUrl, String text) {
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
                        HelperText.kashetoSummary,
                        style: TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
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
