import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xffF95738);
const Color kBackgroundColor = Color(0xff01162C);
const Color kDangerColor = Color(0xffFF3209);
const Color kCaptionColor = Color(0xffC5DECD);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

// Projects Details

// Kasheto
// const String k5t1 = '';
// const String k5t2 = '';
// const String k5b1 = '';
// const String k5b2 = '';
const String k1image = 'k1.png';
const String k1b1 =
    ' Implemented login and signup from a laraval backend with auth token';
const String k1b2 =
    'Integrated 2fa for email when user login in with another device';
const String k1t1 = 'Authenciation';
const String k1t2 = '2 Factor Authenciation';

const String k2image = 'k2.png';
const String k2b1 =
    'Integrated webview to deposit money with flutterwave and paypal';
const String k2b2 =
    'Integrated Image capture and image picker. Also used cloudinary to store image then send string to backend';
const String k2t1 = 'Webview';
const String k2t2 = 'Image';

const String k3image = 'k3.png';
const String k3t1 = 'Transaction';
const String k3t2 = 'History';
const String k3b1 =
    'Integrated airtime and data purchse, bill payment and bank transfer';
const String k3b2 = 'Integrated creating pdf for transaction history';

const String k4image = 'k4.png';
const String k4t1 = 'Deep linking';
const String k4t2 = 'Auto Logout';
const String k4b1 =
    'Integrated deep linking with firebase during the workflow for forgot password';
const String k4b2 = 'Auto logout user after 5miniutes of inactivity';

// Tictactoe
// const String t1b1 = '';
// const String t1b2 = '';
// const String t1t1 = '';
// const String t1t2 = '';

const String t1image = 't1.png';
const String t1b1 = 'Built a game bot for easy, medium and hard mode';
const String t1b2 = 'Built pass and play multiplayer capability';
const String t1t1 = 'Game Bot';
const String t1t2 = 'Multiplayer Capability';

const String t2image = 't2.png';
const String t2b1 =
    'Storing user statistics. Using shred Preference for local storage';
const String t2b2 = 'Integrated share app functionality';
const String t2t1 = 'Local Storage';
const String t2t2 = 'Share';

// ThriftyExpense
// const String te1b1 = '';
// const String te1b2 = '';
// const String te1t1 = '';
// const String te1t2 = '';

const String te1image = 'te1.png';
const String te1b1 = 'Used firebase google authenciation';
const String te1b2 = 'Built in a barchart';
const String te1t1 = 'Auth';
const String te1t2 = 'Chart';

const String te2image = 'te2.png';
const String te2b1 = 'Integrated exporting and importing expense history with csv';
const String te2b2 = 'Integrated exporting and importing expense history with firebase firestore';
const String te2t1 = 'Offline Storage';
const String te2t2 = 'Online Storage';

const String te3image = 'te3.png';
const String te3b1 = 'Integrated notifications using FLutter local notification package';
const String te3b2 = 'Using SQL lite and SharedPreference for local storage';
const String te3t1 = 'Notifications';
const String te3t2 = 'Local Storage';
