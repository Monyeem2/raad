import 'package:dashboard/get.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Get_data(),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'background.dart';
// import 'login_page.dart';
//
//
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Amader Gram',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light().copyWith(
//         appBarTheme: AppBarTheme(
//           color: Colors.white,
//           elevation: 3.5,
//           titleTextStyle: GoogleFonts.roboto(
//             fontSize: 20,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       home: Scaffold(
//         body: Stack(
//           children: [
//             Background(),
//             Positioned(
//               top: 110,
//               right: 10,
//               left: 10,
//               child: LoginForm(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
