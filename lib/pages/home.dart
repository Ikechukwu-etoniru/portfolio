import 'package:flutter/material.dart';
import 'package:web_portfolio/pages/components/carousel.dart';
import 'package:web_portfolio/pages/components/carousel_items.dart';
import 'package:web_portfolio/pages/components/cv_section.dart';
import 'package:web_portfolio/pages/components/footer.dart';
import 'package:web_portfolio/pages/components/header.dart';
import 'package:web_portfolio/pages/projects/kasheto_app.dart';
import 'package:web_portfolio/pages/components/portfolio_stats.dart';
import 'package:web_portfolio/pages/components/skill_section.dart';
import 'package:web_portfolio/pages/components/sponsors.dart';
import 'package:web_portfolio/pages/projects/thrifty_expense.dart';
import 'package:web_portfolio/pages/projects/tic_tac_toe_game.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              KashetoApp(),
              SizedBox(
                height: 70.0,
              ),
              ThriftyExpenseApp(),
              SizedBox(
                height: 70.0,
              ),
              TicTacToeApp(),
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
