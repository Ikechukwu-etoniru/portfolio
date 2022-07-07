import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/utils/constants.dart';

class Alert {
  static Future showContactDialog(BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) {
          final phoneNumber = '+2348103857337';
          final email = 'Ikechukwuetoniru@gmail.com';
          final githubProfile = 'https://github.com/Ikechukwu-etoniru';
          final linkedInProfile =
              'https://www.linkedin.com/in/ikechukwu-etoniru-74429b151/';
          return Dialog(
            elevation: 20,
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   'My Phone Number',
                  //   style: GoogleFonts.oswald(
                  //     color: Colors.white,
                  //     fontSize: 20.0,
                  //     fontWeight: FontWeight.w900,
                  //     height: 1,
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // Row(
                  //   children: [
                  //     Text(
                  //       phoneNumber,
                  //       style: GoogleFonts.quicksand(
                  //         color: Colors.white54,
                  //         fontWeight: FontWeight.w900,
                  //         fontSize: 16.0,
                  //       ),
                  //     ),
                  //     const Spacer(),
                  //     IconButton(
                  //       onPressed: () {
                  //         Clipboard.setData(
                  //           ClipboardData(text: phoneNumber),
                  //         );
                  //       },
                  //       icon: Icon(Icons.copy),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Text(
                    'My Email Address',
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        email,
                        style: GoogleFonts.quicksand(
                          color: Colors.white54,
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Clipboard.setData(
                            ClipboardData(text: email),
                          );
                        },
                        icon: Icon(Icons.copy),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My Github Profile',
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        githubProfile,
                        style: GoogleFonts.quicksand(
                          color: Colors.white54,
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Clipboard.setData(
                            ClipboardData(text: githubProfile),
                          );
                        },
                        icon: Icon(Icons.copy),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My LinkedIn Profile',
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        linkedInProfile,
                        style: GoogleFonts.quicksand(
                          color: Colors.white54,
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Clipboard.setData(
                            ClipboardData(text: linkedInProfile),
                          );
                        },
                        icon: Icon(Icons.copy),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Close',
                        style: GoogleFonts.quicksand(
                          // color: Colors.white54,
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
