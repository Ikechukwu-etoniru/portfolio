import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/carousel_item_model.dart';
import 'package:web_portfolio/models/header_item.dart';
import 'package:web_portfolio/pages/components/carousel.dart';
import 'package:web_portfolio/pages/components/cv_section.dart';
import 'package:web_portfolio/pages/components/footer.dart';
import 'package:web_portfolio/pages/components/header.dart';
import 'package:web_portfolio/pages/projects/kasheto_app.dart';
import 'package:web_portfolio/pages/components/portfolio_stats.dart';
import 'package:web_portfolio/pages/components/skill_section.dart';
import 'package:web_portfolio/pages/components/sponsors.dart';
import 'package:web_portfolio/pages/projects/portfolio_website.dart';
import 'package:web_portfolio/pages/projects/thrifty_expense.dart';
import 'package:web_portfolio/pages/projects/tic_tac_toe_game.dart';
import 'package:web_portfolio/utils/alert.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "MOBILE DEVELOPER [FLUTTER/DART]",
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
            "ETONIRU\nIKECHUKWU",
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
          Text(
            "Mobile app developer, based in Lagos",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Wrap(
              children: [
                Text(
                  "Need a full custom Mobile Application For Android and IOS?",
                  style: TextStyle(
                    color: kCaptionColor,
                    fontSize: 15.0,
                    height: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      " Got a project? Let's talk.",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {
                  Alert.showContactDialog(context);
                },
                child: Text(
                  "CONTACT ME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "assets/person.jpg",
        fit: BoxFit.contain,
      ),
    ),
  ),
);
    List<HeaderItem> headerItems = [
  HeaderItem(
    title: "HOME",
    onTap: () {
      Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
    },
  ),
  // HeaderItem(title: "MY INTRO", onTap: () {}),
  // HeaderItem(title: "SERVICES", onTap: () {}),
  // HeaderItem(title: "PORTFOLIO", onTap: () {}),
  // HeaderItem(title: "TESTIMONIALS", onTap: () {}),
  // HeaderItem(title: "BLOGS", onTap: () {}),
  HeaderItem(
    title: "HIRE ME",
    onTap: () {},
    isButton: true,
  ),
];
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              Carousel(carouselItems: carouselItems),
              SizedBox(
                height: 20.0,
              ),
              CvSection(),
              SizedBox(
                height: 70.0,
              ),
              KashetoApp(),
              SizedBox(
                height: 70.0,
              ),
              ThriftyExpenseApp(),
              SizedBox(
                height: 70.0,
              ),
              TicTacToeApp(),
              SizedBox(
                height: 70.0,
              ),
              PortfolioWebsite(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: PortfolioStats(),
              ),
              SizedBox(
                height: 50.0,
              ),
              SkillSection(),
              SizedBox(
                height: 50.0,
              ),
              Sponsors(),
              SizedBox(
                height: 50.0,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
