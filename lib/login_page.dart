// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:http/http.dart' as http;
// import '../../model/login_model.dart';
// import 'dashboard.dart';
// import 'model/deshboard_model.dart';
// class LoginForm extends StatefulWidget {
//   const LoginForm({Key? key}) : super(key: key);
//
//   @override
//   State<LoginForm> createState() => _LoginFormState();
// }
//
// class _LoginFormState extends State<LoginForm> with TickerProviderStateMixin {
//   GlobalKey<FormState> _formkey = GlobalKey<FormState>();
//   String zemail = '';
//   String xpassword = '';
//
//   bool _obsecureText = true;
//   bool isLogin = true;
//   late Animation<double> containerSize;
//   late AnimationController animationController;
//   Duration animationDuration = Duration(milliseconds: 270);
//
//   late AvgPulseModel avgPulseModel;
//   late AvgHeightModel avgHeightModel;
//   late AvgWeightModel avgWeightModel;
//   late AvgFemaleModel avgFemaleModel;
//   late HasdiabeticModel hasdiabeticModel;
//   late MaleModel maleModel;
//   late MarriedModel marriedModel;
//   late MemberModel memberModel;
//   late NodiabeticModel nodiabeticModel;
//   late NonmemberModel nonmemberModel;
//   late SingleModel singleModel;
//   late WidowModel widowModel;
//
//
//
//   String avgPulseModel1 = '';
//   String avgHeightModel1 = '';
//   String avgWeightModel1 = '';
//   String avgFemaleModel1 = '';
//   String hasdiabeticModel1 = '';
//   String maleModel1 = '';
//   String marriedModel1 = '';
//   String memberModel1 = '';
//   String nodiabeticModel1 = '';
//   String nonmemberModel1 = '';
//   String singleModel1 = '';
//   String widowModel1 = '';
//
//
//   getAllData()async{
//     var responseAvgpulsse = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/avg_pulse.php'),
//     );
//     print(responseAvgpulsse.body);
//     avgPulseModel = avgPulseModelFromJson(responseAvgpulsse.body);
//     setState((){
//       avgPulseModel1 = avgPulseModel.avgPulse;
//     });
//
//
//
//     var responseHeight = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/avg_height.php'),
//     );
//     print(responseHeight.body);
//     avgHeightModel = avgHeightModelFromJson(responseHeight.body);
//     avgHeightModel1 = avgHeightModel.avgheight;
//
//     var responseWeight = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/avgweight.php'),
//     );
//     print(responseWeight.body);
//     avgWeightModel = avgWeightModelFromJson(responseWeight.body);
//     avgWeightModel1 = avgWeightModel.avgweight;
//
//     var responseFemale = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/female_TOTAL.php'),
//     );
//     print(responseFemale.body);
//     avgFemaleModel = avgFemaleModelFromJson(responseFemale.body);
//     avgFemaleModel1 = avgFemaleModel.female;
//
//     var responsediabetic = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/has_diabetic.php'),
//     );
//     print(responsediabetic.body);
//     hasdiabeticModel = hasdiabeticModelFromJson(responsediabetic.body);
//     hasdiabeticModel1 = hasdiabeticModel.hasdiabetic;
//
//     var responseMale = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/male_TOTAL.php'),
//     );
//     print(responseMale.body);
//     maleModel = maleModelFromJson(responseMale.body);
//     maleModel1 = maleModel.male;
//
//     var responseMarried = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/married_count.php'),
//     );
//     print(responseMarried.body);
//     marriedModel = marriedModelFromJson(responseMarried.body);
//     marriedModel1= marriedModel.married;
//
//     var responseMember = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/member_TOTAL.php'),
//     );
//     print(responseMember.body);
//     memberModel = memberModelFromJson(responseMember.body);
//     memberModel1 = memberModel.member;
//
//     var responseNodiabetic = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/no_diabetic.php'),
//     );
//     print(responseNodiabetic.body);
//     nodiabeticModel = nodiabeticModelFromJson(responseNodiabetic.body);
//     nodiabeticModel1 = nodiabeticModel.nodiabetic;
//
//     var responseNonmember = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/nonmember_count.php'),
//     );
//     print(responseNonmember.body);
//     nonmemberModel = nonmemberModelFromJson(responseNonmember.body);
//     nonmemberModel1 = nonmemberModel.nonmember;
//
//
//     var responseSingle = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/single_count.php'),
//     );
//     print(responseSingle.body);
//     singleModel = singleModelFromJson(responseSingle.body);
//     singleModel1 = singleModel.single;
//
//     var responseWidow = await http.get(
//       Uri.parse('https://agsurvey.brotherdev.com/AG_API/widow_count.php'),
//     );
//     print(responseWidow.body);
//     widowModel = widowModelFromJson(responseWidow.body);
//     widowModel1 = widowModel.widow;
//
//   }
//
//
//
//   @override
//   void initState() {
//     super.initState();
//     getAllData();
//     animationController =
//         AnimationController(vsync: this,
//             duration: animationDuration);
//   }
//
//   @override
//   void dispose() {
//     animationController.dispose();
//     super.dispose();
//   }
//
//   void toggle() {
//     setState(() {
//       _obsecureText = !_obsecureText;
//     });
//   }
//
//   late LoginModel data;
//   gotohomepage() async {
//     print(xpassword);
//     final FormState? formState = _formkey.currentState;
//
//     if (formState!.validate()) {
//       formState.save();
//
//       var response =
//       await http.post(Uri.parse('http://agsurvey.brotherdev.com/login.php'),
//           body: jsonEncode(<String, String>{
//             "username": zemail,
//           }));
//       //var data = response.body;
//       // print (data);
//
//       data = loginModelFromJson(response.body);
//
//       //print ("return user data\n"+response.body);
//       print(response.body);
//
//       if (zemail == data.username && xpassword == data.password && data.role =='Medical Assistant') {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => Dashboard(
//                   maleModel1: maleModel1,
//                   memberModel1: memberModel1,
//                   avgWeightModel1: avgWeightModel1,
//                   marriedModel1: marriedModel1,
//                   avgFemaleModel1: avgFemaleModel1,
//                   avgPulseModel1: avgPulseModel1,
//                   widowModel1: widowModel1,
//                   avgHeightModel1: avgHeightModel1,
//                   nodiabeticModel1: nodiabeticModel1,
//                   hasdiabeticModel1: hasdiabeticModel1,
//                   singleModel1: singleModel1,
//                   nonmemberModel1: nonmemberModel1,
//                 )));
//       } else if (zemail == data.username && xpassword == data.password && data.role =='survey') {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => Dashboard(
//                   maleModel1: maleModel1,
//                   memberModel1: memberModel1,
//                   avgWeightModel1: avgWeightModel1,
//                   marriedModel1: marriedModel1,
//                   avgFemaleModel1: avgFemaleModel1,
//                   avgPulseModel1: avgPulseModel1,
//                   widowModel1: widowModel1,
//                   avgHeightModel1: avgHeightModel1,
//                   nodiabeticModel1: nodiabeticModel1,
//                   hasdiabeticModel1: hasdiabeticModel1,
//                   singleModel1: singleModel1,
//                   nonmemberModel1: nonmemberModel1,
//                 )));
//       } else if (zemail == data.username && xpassword == data.password && data.role =='Medical Officer') {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => Dashboard(
//                   maleModel1: maleModel1,
//                   memberModel1: memberModel1,
//                   avgWeightModel1: avgWeightModel1,
//                   marriedModel1: marriedModel1,
//                   avgFemaleModel1: avgFemaleModel1,
//                   avgPulseModel1: avgPulseModel1,
//                   widowModel1: widowModel1,
//                   avgHeightModel1: avgHeightModel1,
//                   nodiabeticModel1: nodiabeticModel1,
//                   hasdiabeticModel1: hasdiabeticModel1,
//                   singleModel1: singleModel1,
//                   nonmemberModel1: nonmemberModel1,
//                 )));
//       }
//       else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             backgroundColor: Colors.red,
//             content: Text(
//               "Wrong Username/Password ",
//               textAlign: TextAlign.center,
//               style: GoogleFonts.roboto(
//                 fontSize: 18,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         );
//       }
//     }
//   }
//
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//
//     double viewInset = MediaQuery.of(context)
//         .viewInsets
//         .bottom; // we are using this to determine Keyboard is opened or not
//     double defaultLoginSize = size.height - (size.height * 0.2);
//     double defaultRegisterSize = size.height - (size.height * 0.1);
//
//     containerSize = Tween<double>(
//         begin: size.height * 0.1, end: defaultRegisterSize)
//         .animate(
//         CurvedAnimation(parent: animationController, curve: Curves.linear));
//
//     return Container(
//       child: Form(
//         key: _formkey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//                 margin: EdgeInsets.only(bottom: 60),
//                 color: Colors.white,
//                 child: Container(
//                   height: 100,
//                   width: 100,
//                   child: Image.asset('images/ag.png'),
//                 )),
//             SizedBox(
//               height: 150,
//               child: Stack(
//                 children: [
//                   Container(
//                     height: 150,
//                     margin: const EdgeInsets.only(
//                       right: 70,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: const BorderRadius.only(
//                         topRight: Radius.circular(100),
//                         bottomRight: Radius.circular(100),
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.2),
//                           spreadRadius: 0,
//                           blurRadius: 10,
//                           offset: const Offset(0, 4),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.only(left: 16, right: 32),
//                           child: TextFormField(
//                             style: GoogleFonts.roboto(
//                               fontSize: 18,
//                               color: Colors.black,
//                             ),
//                             onChanged: (input) {
//                               zemail = input;
//                             },
//                             validator: (input) {
//                               if (input!.isEmpty) {
//                                 return "Empty";
//                               }
//                             },
//                             decoration: InputDecoration(
//                               contentPadding: EdgeInsets.only(
//                                   left: 20), // add padding to adjust text
//                               isDense: false,
//                               hintStyle: GoogleFonts.roboto(
//                                 fontSize: 18,
//                               ),
//                               labelText: "User Name",
//                               labelStyle: GoogleFonts.roboto(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                               ),
//                               border: InputBorder.none,
//                               suffixIcon: Icon(
//                                 Icons.account_circle,
//                                 size: 35,
//                                 color: Color(0xFF05672E),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(left: 16, right: 32),
//                           child: TextFormField(
//                             style: GoogleFonts.roboto(
//                               fontSize: 18,
//                               color: Colors.black,
//                             ),
//                             obscureText: _obsecureText,
//                             onChanged: (input) {
//                               xpassword = input;
//                             },
//                             validator: (input) {
//                               if (input!.isEmpty) {
//                                 return "Empty";
//                               }
//                             },
//                             decoration: InputDecoration(
//                                 contentPadding: EdgeInsets.only(
//                                     left: 20), // add padding to adjust text
//                                 isDense: false,
//                                 hintStyle: GoogleFonts.roboto(
//                                   fontSize: 18,
//                                 ),
//                                 labelText: "Password",
//                                 labelStyle: GoogleFonts.roboto(
//                                   fontSize: 18,
//                                   color: Colors.black,
//                                 ),
//                                 border: InputBorder.none,
//                                 suffixIcon: IconButton(
//                                   icon: Icon(
//                                     _obsecureText
//                                         ? FontAwesomeIcons.solidEyeSlash
//                                         : FontAwesomeIcons.solidEye,
//                                     color: Color(0xFF05672E),
//                                   ),
//                                   onPressed: () {
//                                     toggle();
//                                   },
//                                 )),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Container(
//                       margin: const EdgeInsets.only(right: 15),
//                       height: 80,
//                       width: 80,
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.green[200]!.withOpacity(0.5),
//                             spreadRadius: 5,
//                             blurRadius: 7,
//                             offset: const Offset(0, 3),
//                           ),
//                         ],
//                         shape: BoxShape.circle,
//                         gradient: const LinearGradient(
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight,
//                           colors: [
//                             Color(0xff1bccba),
//                             Color(0xff22e2ab),
//                           ],
//                         ),
//                       ),
//                       child: IconButton(
//                         icon: Icon(
//                           Icons.arrow_forward_outlined,
//                           color: Colors.white,
//                           size: 32,
//                         ),
//                         onPressed: () {
//                           gotohomepage();
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
// //
// //
// // import 'dart:convert';
// // import 'package:dashboard/dashboard.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:http/http.dart' as http;
// // import '../../model/login_model.dart';
// // import 'model/deshboard_model.dart';
// //
// // class LoginForm extends StatefulWidget {
// //   const LoginForm({Key? key}) : super(key: key);
// //
// //   @override
// //   State<LoginForm> createState() => _LoginFormState();
// // }
// //
// // class _LoginFormState extends State<LoginForm> with TickerProviderStateMixin {
// //   GlobalKey<FormState> _formkey = GlobalKey<FormState>();
// //   String zemail = '';
// //   String xpassword = '';
// //
// //   bool _obsecureText = true;
// //   bool isLogin = true;
// //   late Animation<double> containerSize;
// //   late AnimationController animationController;
// //   Duration animationDuration = Duration(milliseconds: 270);
// //
// //
// //
// //   late AvgPulseModel avgPulseModel;
// //   late AvgHeightModel avgHeightModel;
// //   late AvgWeightModel avgWeightModel;
// //   late AvgFemaleModel avgFemaleModel;
// //   late HasdiabeticModel hasdiabeticModel;
// //   late MaleModel maleModel;
// //   late MarriedModel marriedModel;
// //   late MemberModel memberModel;
// //   late NodiabeticModel nodiabeticModel;
// //   late NonmemberModel nonmemberModel;
// //   late SingleModel singleModel;
// //   late WidowModel widowModel;
// //
// //
// //
// //   String avgPulseModel1 = '';
// //   String avgHeightModel1 = '';
// //   String avgWeightModel1 = '';
// //   String avgFemaleModel1 = '';
// //   String hasdiabeticModel1 = '';
// //   String maleModel1 = '';
// //   String marriedModel1 = '';
// //   String memberModel1 = '';
// //   String nodiabeticModel1 = '';
// //   String nonmemberModel1 = '';
// //   String singleModel1 = '';
// //   String widowModel1 = '';
// //
// //
// //   getAllData()async{
// //     var responseAvgpulsse = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/avg_pulse.php'),
// //     );
// //     print(responseAvgpulsse.body);
// //     avgPulseModel = avgPulseModelFromJson(responseAvgpulsse.body);
// //     setState((){
// //       avgPulseModel1 = avgPulseModel.avgPulse;
// //     });
// //
// //
// //
// //     var responseHeight = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/avg_height.php'),
// //     );
// //     print(responseHeight.body);
// //     avgHeightModel = avgHeightModelFromJson(responseHeight.body);
// //     avgHeightModel1 = avgHeightModel.avgheight;
// //
// //     var responseWeight = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/avgweight.php'),
// //     );
// //     print(responseWeight.body);
// //     avgWeightModel = avgWeightModelFromJson(responseWeight.body);
// //     avgWeightModel1 = avgWeightModel.avgweight;
// //
// //     var responseFemale = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/female_TOTAL.php'),
// //     );
// //     print(responseFemale.body);
// //     avgFemaleModel = avgFemaleModelFromJson(responseFemale.body);
// //     avgFemaleModel1 = avgFemaleModel.female;
// //
// //     var responsediabetic = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/has_diabetic.php'),
// //     );
// //     print(responsediabetic.body);
// //     hasdiabeticModel = hasdiabeticModelFromJson(responsediabetic.body);
// //     hasdiabeticModel1 = hasdiabeticModel.hasdiabetic;
// //
// //     var responseMale = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/male_TOTAL.php'),
// //     );
// //     print(responseMale.body);
// //     maleModel = maleModelFromJson(responseMale.body);
// //     maleModel1 = maleModel.male;
// //
// //     var responseMarried = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/married_count.php'),
// //     );
// //     print(responseMarried.body);
// //     marriedModel = marriedModelFromJson(responseMarried.body);
// //     marriedModel1= marriedModel.married;
// //
// //     var responseMember = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/member_TOTAL.php'),
// //     );
// //     print(responseMember.body);
// //     memberModel = memberModelFromJson(responseMember.body);
// //     memberModel1 = memberModel.member;
// //
// //     var responseNodiabetic = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/no_diabetic.php'),
// //     );
// //     print(responseNodiabetic.body);
// //     nodiabeticModel = nodiabeticModelFromJson(responseNodiabetic.body);
// //     nodiabeticModel1 = nodiabeticModel.nodiabetic;
// //
// //     var responseNonmember = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/nonmember_count.php'),
// //     );
// //     print(responseNonmember.body);
// //     nonmemberModel = nonmemberModelFromJson(responseNonmember.body);
// //     nonmemberModel1 = nonmemberModel.nonmember;
// //
// //
// //     var responseSingle = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/single_count.php'),
// //     );
// //     print(responseSingle.body);
// //     singleModel = singleModelFromJson(responseSingle.body);
// //     singleModel1 = singleModel.single;
// //
// //     var responseWidow = await http.get(
// //       Uri.parse('https://agsurvey.brotherdev.com/AG_API/widow_count.php'),
// //     );
// //     print(responseWidow.body);
// //     widowModel = widowModelFromJson(responseWidow.body);
// //     widowModel1 = widowModel.widow;
// //
// //   }
// //
// //
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     getAllData();
// //     animationController =
// //         AnimationController(vsync: this,
// //             duration: animationDuration);
// //   }
// //
// //   @override
// //   void dispose() {
// //     animationController.dispose();
// //     super.dispose();
// //   }
// //
// //   void toggle() {
// //     setState(() {
// //       _obsecureText = !_obsecureText;
// //     });
// //   }
// //
// //   late LoginModel data;
// //   gotohomepage() async {
// //     print("h"+xpassword);
// //     final FormState? formState = _formkey.currentState;
// //
// //     if (formState!.validate()) {
// //       formState.save();
// //
// //       var response =
// //       await http.post(Uri.parse('https://agsurvey.brotherdev.com/login.php'),
// //           body: jsonEncode(<String, String>{
// //             "username": zemail,
// //           }));
// //
// //       data = loginModelFromJson(response.body);
// //
// //       //print ("return user data\n"+response.body);
// //       print(response.body);
// //
// //       if (zemail == data.username && xpassword == data.password && data.role =='Medical Assistant') {
// //         Navigator.push(
// //             context, MaterialPageRoute(builder: (context) => Dashboard(
// //           maleModel1: maleModel1,
// //           memberModel1: memberModel1,
// //           avgWeightModel1: avgWeightModel1,
// //           marriedModel1: marriedModel1,
// //           avgFemaleModel1: avgFemaleModel1,
// //           avgPulseModel1: avgPulseModel1,
// //           widowModel1: widowModel1,
// //           avgHeightModel1: avgHeightModel1,
// //           nodiabeticModel1: nodiabeticModel1,
// //           hasdiabeticModel1: hasdiabeticModel1,
// //           singleModel1: singleModel1,
// //           nonmemberModel1: nonmemberModel1,
// //         )));
// //       } else if (zemail == data.username && xpassword == data.password && data.role =='survey') {
// //         Navigator.push(
// //             context,
// //             MaterialPageRoute(
// //                 builder: (context) => Dashboard(
// //                   maleModel1: maleModel1,
// //                   memberModel1: memberModel1,
// //                   avgWeightModel1: avgWeightModel1,
// //                   marriedModel1: marriedModel1,
// //                   avgFemaleModel1: avgFemaleModel1,
// //                   avgPulseModel1: avgPulseModel1,
// //                   widowModel1: widowModel1,
// //                   avgHeightModel1: avgHeightModel1,
// //                   nodiabeticModel1: nodiabeticModel1,
// //                   hasdiabeticModel1: hasdiabeticModel1,
// //                   singleModel1: singleModel1,
// //                   nonmemberModel1: nonmemberModel1,
// //                 )));
// //       } else if (zemail == data.username && xpassword == data.password && data.role =='Medical Officer') {
// //         Navigator.push(
// //             context, MaterialPageRoute(builder: (context) => Dashboard(
// //           maleModel1: maleModel1,
// //           memberModel1: memberModel1,
// //           avgWeightModel1: avgWeightModel1,
// //           marriedModel1: marriedModel1,
// //           avgFemaleModel1: avgFemaleModel1,
// //           avgPulseModel1: avgPulseModel1,
// //           widowModel1: widowModel1,
// //           avgHeightModel1: avgHeightModel1,
// //           nodiabeticModel1: nodiabeticModel1,
// //           hasdiabeticModel1: hasdiabeticModel1,
// //           singleModel1: singleModel1,
// //           nonmemberModel1: nonmemberModel1,)));
// //       }
// //       else {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(
// //             backgroundColor: Colors.red,
// //             content: Text(
// //               "Wrong Username/Password ",
// //               textAlign: TextAlign.center,
// //               style: GoogleFonts.roboto(
// //                 fontSize: 18,
// //                 color: Colors.white,
// //               ),
// //             ),
// //           ),
// //         );
// //       }
// //     }
// //   }
// //
// //   Widget build(BuildContext context) {
// //     final size = MediaQuery.of(context).size;
// //
// //     double viewInset = MediaQuery.of(context)
// //         .viewInsets
// //         .bottom; // we are using this to determine Keyboard is opened or not
// //     double defaultLoginSize = size.height - (size.height * 0.2);
// //     double defaultRegisterSize = size.height - (size.height * 0.1);
// //
// //     containerSize = Tween<double>(
// //         begin: size.height * 0.1, end: defaultRegisterSize)
// //         .animate(
// //         CurvedAnimation(parent: animationController, curve: Curves.linear));
// //
// //     return Container(
// //       child: Form(
// //         key: _formkey,
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Container(
// //                 margin: EdgeInsets.only(bottom: 60),
// //                 // color: Colors.white,
// //                 child: Column(
// //                   children: [
// //                     Container(
// //                       height: 100,
// //                       width: 100,
// //                       child: Image.asset('images/ag.png'),
// //                     ),
// //                     Container(
// //                       height: 50,
// //                       width: MediaQuery.of(context).size.width,
// //                       child: Image.asset('images/agwritten.png'),
// //                     ),
// //                   ],
// //                 )),
// //             SizedBox(
// //               height: 150,
// //               child: Stack(
// //                 children: [
// //                   Container(
// //                     height: 150,
// //                     margin: const EdgeInsets.only(
// //                       right: 70,
// //                     ),
// //                     decoration: BoxDecoration(
// //                       color: Colors.white,
// //                       borderRadius: const BorderRadius.only(
// //                         topRight: Radius.circular(100),
// //                         bottomRight: Radius.circular(100),
// //                       ),
// //                       boxShadow: [
// //                         BoxShadow(
// //                           color: Colors.grey.withOpacity(0.2),
// //                           spreadRadius: 0,
// //                           blurRadius: 10,
// //                           offset: const Offset(0, 4),
// //                         ),
// //                       ],
// //                     ),
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                       children: [
// //                         Container(
// //                           margin: const EdgeInsets.only(left: 16, right: 32),
// //                           child: TextFormField(
// //                             style: GoogleFonts.roboto(
// //                               fontSize: 18,
// //                               color: Colors.black,
// //                             ),
// //                             onChanged: (input) {
// //                               zemail = input;
// //                             },
// //                             validator: (input) {
// //                               if (input!.isEmpty) {
// //                                 return "Empty";
// //                               }
// //                             },
// //                             decoration: InputDecoration(
// //                               contentPadding: EdgeInsets.only(
// //                                   left: 20), // add padding to adjust text
// //                               isDense: false,
// //                               hintStyle: GoogleFonts.roboto(
// //                                 fontSize: 18,
// //                               ),
// //                               labelText: "User Name",
// //                               labelStyle: GoogleFonts.roboto(
// //                                 fontSize: 18,
// //                                 color: Colors.black,
// //                               ),
// //                               border: InputBorder.none,
// //                               suffixIcon: Icon(
// //                                 Icons.account_circle,
// //                                 size: 35,
// //                                 color: Color(0xFF05672E),
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                         Container(
// //                           margin: const EdgeInsets.only(left: 16, right: 32),
// //                           child: TextFormField(
// //                             style: GoogleFonts.roboto(
// //                               fontSize: 18,
// //                               color: Colors.black,
// //                             ),
// //                             obscureText: _obsecureText,
// //                             onChanged: (input) {
// //                               xpassword = input;
// //                             },
// //                             validator: (input) {
// //                               if (input!.isEmpty) {
// //                                 return "Empty";
// //                               }
// //                             },
// //                             decoration: InputDecoration(
// //                                 contentPadding: EdgeInsets.only(
// //                                     left: 20), // add padding to adjust text
// //                                 isDense: false,
// //                                 hintStyle: GoogleFonts.roboto(
// //                                   fontSize: 18,
// //                                 ),
// //                                 labelText: "Password",
// //                                 labelStyle: GoogleFonts.roboto(
// //                                   fontSize: 18,
// //                                   color: Colors.black,
// //                                 ),
// //                                 border: InputBorder.none,
// //                                 suffixIcon: IconButton(
// //                                   icon: Icon(
// //                                     _obsecureText
// //                                         ? FontAwesomeIcons.solidEyeSlash
// //                                         : FontAwesomeIcons.solidEye,
// //                                     color: Color(0xFF05672E),
// //                                   ),
// //                                   onPressed: () {
// //                                     toggle();
// //                                   },
// //                                 )),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                   Align(
// //                     alignment: Alignment.centerRight,
// //                     child: Container(
// //                       margin: const EdgeInsets.only(right: 15),
// //                       height: 80,
// //                       width: 80,
// //                       decoration: BoxDecoration(
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.green[200]!.withOpacity(0.5),
// //                             spreadRadius: 5,
// //                             blurRadius: 7,
// //                             offset: const Offset(0, 3),
// //                           ),
// //                         ],
// //                         shape: BoxShape.circle,
// //                         gradient: const LinearGradient(
// //                           begin: Alignment.centerLeft,
// //                           end: Alignment.centerRight,
// //                           colors: [
// //                             Color(0xff1bccba),
// //                             Color(0xff22e2ab),
// //                           ],
// //                         ),
// //                       ),
// //                       child: IconButton(
// //                         icon: Icon(
// //                           Icons.arrow_forward_outlined,
// //                           color: Colors.white,
// //                           size: 32,
// //                         ),
// //                         onPressed: () {
// //                           print("enter");
// //                           gotohomepage();
// //                         },
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             SizedBox(
// //               height: 20,
// //             ),
// //
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
