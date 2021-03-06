import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/models/design_process.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

final List<DesignProcess> designProcesses = [
  DesignProcess(
    title: "DEVELOP",
    imagePath: "assets/design.png",
    subtitle:
        "I design and develop cross-platform application according to design.",
  ),
  DesignProcess(
    title: "COOPERATE",
    imagePath: "assets/develop.png",
    subtitle:
        "App development can involve various specialists like UI/UX designers, QA engineers, Project Managers, I collaborate with all team members to achieve the best results.",
  ),
  DesignProcess(
    title: "CLEAN CODE",
    imagePath: "assets/write.png",
    subtitle:
        "I write clean, readable and understandable code that will allow any development team understand code fast and allow scaling of app.",
  ),
  DesignProcess(
    title: "INVESTIGATE",
    imagePath: "assets/promote.png",
    subtitle:
        "The IT industry is constantly improving, and new technologies are released. I always investigate on new ways to improve mobile apps, architecture, and framework combination for best result.",
  ),
];

class CvSection extends StatefulWidget {
  @override
  State<CvSection> createState() => _CvSectionState();
}

class _CvSectionState extends State<CvSection> {
  var _isLoading = false;
  final Uri _url = Uri.parse(
      'https://drive.google.com/uc?export=download&id=16k_TuUwhZJDokw3QFyJA244-Z_YCEPNB');

  void _launchUrl() async {
    setState(() {
      _isLoading = true;
    });
    try {
      await Future.delayed(const Duration(seconds: 3));
      await launchUrl(
        _url,
      );
    } catch (error) {
      print(error);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: kDangerColor,
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          elevation: 30,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          action: SnackBarAction(
              label: 'Close',
              onPressed: () {
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
              }),
          content: Text('An error occured. ${error.toString()}'),
        ),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(context, kDesktopMaxWidth),
        tablet: _buildUi(context, kTabletMaxWidth),
        mobile: _buildUi(context, getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    // we need the context to get maxWidth before the constraints below
    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "CLEAN CODE,\nBETTER EXPERIENCES",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  height: 1.8,
                  fontSize: 18.0,
                ),
              ),
              if (_isLoading)
                Center(
                  child: CircularProgressIndicator(
                    color: kPrimaryColor,
                  ),
                ),
              if (!_isLoading)
                GestureDetector(
                  onTap: _launchUrl,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "DOWNLOAD CV",
                      style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            child: LayoutBuilder(
              builder: (_context, constraints) {
                return ResponsiveGridView.builder(
                  padding: EdgeInsets.all(0.0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  alignment: Alignment.topCenter,
                  gridDelegate: ResponsiveGridDelegate(
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    maxCrossAxisExtent: ScreenHelper.isTablet(context) ||
                            ScreenHelper.isMobile(context)
                        ? constraints.maxWidth / 2.0
                        : 250.0,
                    // Hack to adjust child height
                    childAspectRatio: ScreenHelper.isDesktop(context)
                        ? 1
                        : MediaQuery.of(context).size.aspectRatio * 1.5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  designProcesses[index].imagePath,
                                  width: 40.0,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  designProcesses[index].title,
                                  style: GoogleFonts.oswald(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            designProcesses[index].subtitle,
                            style: TextStyle(
                              color: kCaptionColor,
                              height: 1.5,
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: designProcesses.length,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
