import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'model/deshboard_model.dart';
import 'model/get_data_model.dart';

class Dashboard extends StatefulWidget {
  String avgPulseModel1 ;
  String avgHeightModel1 ;
  String avgWeightModel1 ;
  String avgFemaleModel1 ;
  String hasdiabeticModel1 ;
  String maleModel1 ;
  String marriedModel1 ;
  String memberModel1 ;
  String nodiabeticModel1 ;
  String nonmemberModel1 ;
  String singleModel1 ;
  String widowModel1 ;

  Dashboard({
    required this.avgPulseModel1 ,
    required this.avgHeightModel1 ,
    required this.avgWeightModel1 ,
    required this.avgFemaleModel1 ,
    required this.hasdiabeticModel1 ,
    required this.maleModel1 ,
    required this.marriedModel1 ,
    required this.memberModel1 ,
    required this.nodiabeticModel1 ,
    required this.nonmemberModel1 ,
    required this.singleModel1 ,
    required this.widowModel1 ,

  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  String searchid = " ";

  @override
  Future<List<GetSurveydataModel>>? futurePost;

  Future<List<GetSurveydataModel>> fetchPostsearch() async {
    var response = await http.get(
      Uri.parse('http://agsurvey.brotherdev.com/getdata.php'),
    );

    print(response.body);

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed
          .map<GetSurveydataModel>((json) => GetSurveydataModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load album');
    }
  }

  Icon searchIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Search Patient ID');


  // late AvgPulseModel avgPulseModel;
  // late AvgHeightModel avgHeightModel;
  // late AvgWeightModel avgWeightModel;
  // late AvgFemaleModel avgFemaleModel;
  // late HasdiabeticModel hasdiabeticModel;
  // late MaleModel maleModel;
  // late MarriedModel marriedModel;
  // late MemberModel memberModel;
  // late NodiabeticModel nodiabeticModel;
  // late NonmemberModel nonmemberModel;
  // late SingleModel singleModel;
  // late WidowModel widowModel;
  //
  //
  //
  //
  //
  // getAllData()async{
  //   var responseAvgpulsse = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/avg_pulse.php'),
  //   );
  //   print(responseAvgpulsse.body);
  //   avgPulseModel = avgPulseModelFromJson(responseAvgpulsse.body);
  //   setState((){
  //     avgPulseModel1 = avgPulseModel.avgPulse;
  //   });
  //
  //
  //
  //   var responseHeight = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/avg_height.php'),
  //   );
  //   print(responseHeight.body);
  //   avgHeightModel = avgHeightModelFromJson(responseHeight.body);
  //   avgHeightModel1 = avgHeightModel.avgheight;
  //
  //   var responseWeight = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/avgweight.php'),
  //   );
  //   print(responseWeight.body);
  //   avgWeightModel = avgWeightModelFromJson(responseWeight.body);
  //   avgWeightModel1 = avgWeightModel.avgweight;
  //
  //   var responseFemale = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/female_TOTAL.php'),
  //   );
  //   print(responseFemale.body);
  //   avgFemaleModel = avgFemaleModelFromJson(responseFemale.body);
  //   avgFemaleModel1 = avgFemaleModel.female;
  //
  //   var responsediabetic = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/has_diabetic.php'),
  //   );
  //   print(responsediabetic.body);
  //   hasdiabeticModel = hasdiabeticModelFromJson(responsediabetic.body);
  //   hasdiabeticModel1 = hasdiabeticModel.hasdiabetic;
  //
  //   var responseMale = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/male_TOTAL.php'),
  //   );
  //   print(responseMale.body);
  //   maleModel = maleModelFromJson(responseMale.body);
  //   maleModel1 = maleModel.male;
  //
  //   var responseMarried = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/married_count.php'),
  //   );
  //   print(responseMarried.body);
  //   marriedModel = marriedModelFromJson(responseMarried.body);
  //   marriedModel1= marriedModel.married;
  //
  //   var responseMember = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/member_TOTAL.php'),
  //   );
  //   print(responseMember.body);
  //   memberModel = memberModelFromJson(responseMember.body);
  //   memberModel1 = memberModel.member;
  //
  //   var responseNodiabetic = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/no_diabetic.php'),
  //   );
  //   print(responseNodiabetic.body);
  //   nodiabeticModel = nodiabeticModelFromJson(responseNodiabetic.body);
  //   nodiabeticModel1 = nodiabeticModel.nodiabetic;
  //
  //   var responseNonmember = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/nonmember_count.php'),
  //   );
  //   print(responseNonmember.body);
  //   nonmemberModel = nonmemberModelFromJson(responseNonmember.body);
  //   nonmemberModel1 = nonmemberModel.nonmember;
  //
  //
  //   var responseSingle = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/single_count.php'),
  //   );
  //   print(responseSingle.body);
  //   singleModel = singleModelFromJson(responseSingle.body);
  //   singleModel1 = singleModel.single;
  //
  //   var responseWidow = await http.get(
  //     Uri.parse('https://agsurvey.brotherdev.com/AG_API/widow_count.php'),
  //   );
  //   print(responseWidow.body);
  //   widowModel = widowModelFromJson(responseWidow.body);
  //   widowModel1 = widowModel.widow;
  //
  // }



  //late StreamController<String> _events;

  // void _fbnamefind() {
  //   avgPulseModel1;
  //    // avgHeightModel1;
  //    // avgWeightModel1;
  //    // avgFemaleModel1;
  //    // hasdiabeticModel1;
  //    // maleModel1;
  //    // marriedModel1;
  //    // memberModel1;
  //    // nodiabeticModel1;
  //    // nonmemberModel1;
  //    // singleModel1;
  //    // widowModel1 ;
  //
  //   _events.add(avgPulseModel1);
  //   // _events.add(avgHeightModel1);
  //   // _events.add(avgWeightModel1);
  //   // _events.add(avgFemaleModel1);
  //   // _events.add(hasdiabeticModel1);
  //   // _events.add(maleModel1);
  //   // _events.add(marriedModel1);
  //   // _events.add(memberModel1);
  //   // _events.add(nodiabeticModel1);
  //   // _events.add(nonmemberModel1);
  //   // _events.add(singleModel1);
  //   // _events.add(widowModel1);
  //
  //
  // }


  @override
  void initState() {
    super.initState();
    //getAllData();
    _postsController = new StreamController();
    loadPosts();
    //Timer.periodic(Duration(seconds: 1), (_) => _fbnamefind());
    //_events = new StreamController<String>();

  }


  late StreamController _postsController;
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  int count = 1;

  Future fetchPost([howMany = 5]) async {
    final response = await http.get(
        Uri.parse('https://agsurvey.brotherdev.com/male_TOTAL.php')
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load post');
    }
  }

  loadPosts() async {
    fetchPost().then((res) async {
      _postsController.add(res);
      return res;
    });
  }

  showSnack() {
    return scaffoldKey.currentState!.showSnackBar(
      SnackBar(
        content: Text('New content loaded'),
      ),
    );
  }

  Future<Null> _handleRefresh() async {
    count++;
    print(count);
    fetchPost(count * 5).then((res) async {
      _postsController.add(res);
      showSnack();
      return null;
    });
  }







  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        body: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Image(
                      height: 60,
                      image: AssetImage('images/ag.png'),
                    ),
                    Image(
                      height: 30,
                      image: AssetImage('images/agwritten.png'),
                    ),


                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200,
                      child: Card(
                        elevation: 2,
                        child: TextField(
                          onChanged: (input) {
                            searchid = input;
                          },
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              hintText: 'Patient ID',
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 100,
                      child: RaisedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (context) =>
                          //     SearchData(id: searchid,role: 'MA',)));
                        },
                        color: Colors.white,
                        child: Text("Search"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                // StreamBuilder(
                //   stream: _events.stream,
                //   builder: (BuildContext context, snapshot) {
                //     return
                //
                //   },
                // )

          Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          // padding: EdgeInsets.only(to),
                          height: 80,
                          width: 170,
                          //   padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.pink,
                                    //Color(0xffF64F2E),
                                    Color(0xff2A427C),
                                    // Colors.yellow,
                                    // Colors.orange,
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.avgPulseModel1,
                                style: GoogleFonts.roboto(
                                  fontSize: 40.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Total Patients',
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),


                        ),
                      ),


                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          height: 80,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.greenAccent,
                                    Colors.teal,
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '21',
                                style: GoogleFonts.roboto(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Todays Patient',
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          height: 80,
                          width: 190,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.orange,
                                    Colors.red,
                                  ])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon(Icons.male, color: Colors.white),
                                  Text(
                                    'Male',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.maleModel1,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                child: Text(
                                  "|",
                                  style: GoogleFonts.roboto(
                                    fontSize: 70.0,
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon(Icons.female, color: Colors.white),
                                  Text(
                                    'Female',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.avgFemaleModel1,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          height: 80,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xff0AB8CE),
                                    Color(0xff4E6B9E),
                                  ])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon(Icons.male, color: Colors.white),
                                  Text(
                                    'Member',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.memberModel1,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                child: Text(
                                  "|",
                                  style: GoogleFonts.roboto(
                                    fontSize: 70.0,
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Icon(Icons.female, color: Colors.white),
                                  Text(
                                    'Non Member',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.nonmemberModel1,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          height: 80,
                          width: 260,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xffDC7E8E),
                                    Colors.pink,
                                  ])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Text(
                                    'Single',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.singleModel1,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                child: Text(
                                  "|",
                                  style: GoogleFonts.roboto(
                                    fontSize: 70.0,
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Text(
                                    'Married',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.marriedModel1,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                child: Text(
                                  "|",
                                  style: GoogleFonts.roboto(
                                    fontSize: 70.0,
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Text(
                                    'Widow',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.widowModel1,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          height: 110,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.yellow,
                                    Color(0xff22BED5),
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Average Weight',
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                widget.avgWeightModel1,
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          height: 110,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.pink,
                                    Colors.purpleAccent,
                                    Colors.pinkAccent,
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Average Height',
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                widget.avgHeightModel1,
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          height: 110,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xffCBDF01),
                                    Color(0xff0796DA),
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Average Pulse',
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                widget.avgPulseModel1,
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          height: 110,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.yellow,
                                    Colors.orange,
                                    // Colors.pink,
                                    // //Color(0xffF64F2E),
                                    // Color(0xff2A427C),
                                  ])),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Blood Pressure',
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [

                                      Text(
                                        'Systolic',
                                        style: GoogleFonts.roboto(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '140',
                                        style: GoogleFonts.roboto(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "|",
                                      style: GoogleFonts.roboto(
                                        fontSize: 70.0,
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [

                                      Text(
                                        'Diastolic',
                                        style: GoogleFonts.roboto(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '100',
                                        style: GoogleFonts.roboto(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          height: 110,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [

                                    Colors.red,
                                    Colors.blue,
                                    // Colors.pink,
                                    // //Color(0xffF64F2E),
                                    // Color(0xff2A427C),
                                  ])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Text(
                                    'No Diabetes',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '140',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                child: Text(
                                  "|",
                                  style: GoogleFonts.roboto(
                                    fontSize: 70.0,
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Text(
                                    'Diabetes',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '100',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
          )





              ],
            ),
          ),
        ),
      ),
    );
  }
}
