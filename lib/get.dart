import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'model/deshboard_model.dart';
import 'package:http/http.dart' as http;

class Get_data extends StatefulWidget {
  const Get_data({Key? key}) : super(key: key);

  @override
  State<Get_data> createState() => _Get_dataState();
}

class _Get_dataState extends State<Get_data> {

  late AvgPulseModel avgPulseModel;
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



  String avgPulseModel1 = '';
  String avgHeightModel1 = '';
  String avgWeightModel1 = '';
  String avgFemaleModel1 = '';
  String hasdiabeticModel1 = '';
  String maleModel1 = '';
  String marriedModel1 = '';
  String memberModel1 = '';
  String nodiabeticModel1 = '';
  String nonmemberModel1 = '';
  String singleModel1 = '';
  String widowModel1 = '';


  getAllData()async{


    var responseAvgpulsse = await http.get(
      Uri.parse('https://agsurvey.brotherdev.com/AG_API/avg_pulse.php'),
    );
    print(responseAvgpulsse.body);
    avgPulseModel = avgPulseModelFromJson(responseAvgpulsse.body);


    print("kk"+avgPulseModel.avgPulse.toString());


    //
    // var responseHeight = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/avg_height.php'),
    // );
    // print(responseHeight.body);
    // avgHeightModel = avgHeightModelFromJson(responseHeight.body);
    // avgHeightModel1 = avgHeightModel.avgheight;
    //
    // var responseWeight = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/avgweight.php'),
    // );
    // print(responseWeight.body);
    // avgWeightModel = avgWeightModelFromJson(responseWeight.body);
    // avgWeightModel1 = avgWeightModel.avgweight;
    //
    // var responseFemale = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/female_TOTAL.php'),
    // );
    // print(responseFemale.body);
    // avgFemaleModel = avgFemaleModelFromJson(responseFemale.body);
    // avgFemaleModel1 = avgFemaleModel.female;
    //
    // var responsediabetic = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/has_diabetic.php'),
    // );
    // print(responsediabetic.body);
    // hasdiabeticModel = hasdiabeticModelFromJson(responsediabetic.body);
    // hasdiabeticModel1 = hasdiabeticModel.hasdiabetic;
    //
    // var responseMale = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/male_TOTAL.php'),
    // );
    // print(responseMale.body);
    // maleModel = maleModelFromJson(responseMale.body);
    // maleModel1 = maleModel.male;
    //
    // var responseMarried = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/married_count.php'),
    // );
    // print(responseMarried.body);
    // marriedModel = marriedModelFromJson(responseMarried.body);
    // marriedModel1= marriedModel.married;
    //
    // var responseMember = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/member_TOTAL.php'),
    // );
    // print(responseMember.body);
    // memberModel = memberModelFromJson(responseMember.body);
    // memberModel1 = memberModel.member;
    //
    // var responseNodiabetic = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/no_diabetic.php'),
    // );
    // print(responseNodiabetic.body);
    // nodiabeticModel = nodiabeticModelFromJson(responseNodiabetic.body);
    // nodiabeticModel1 = nodiabeticModel.nodiabetic;
    //
    // var responseNonmember = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/nonmember_count.php'),
    // );
    // print(responseNonmember.body);
    // nonmemberModel = nonmemberModelFromJson(responseNonmember.body);
    // nonmemberModel1 = nonmemberModel.nonmember;
    //
    //
    // var responseSingle = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/single_count.php'),
    // );
    // print(responseSingle.body);
    // singleModel = singleModelFromJson(responseSingle.body);
    // singleModel1 = singleModel.single;
    //
    // var responseWidow = await http.get(
    //   Uri.parse('https://agsurvey.brotherdev.com/AG_API/widow_count.php'),
    // );
    // print(responseWidow.body);
    // widowModel = widowModelFromJson(responseWidow.body);
    // widowModel1 = widowModel.widow;

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Get"),
        ),

        body: Center(
          child: FlatButton(
              onPressed: (){
                getAllData();
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => Dashboard(
                //           maleModel1: maleModel1,
                //           memberModel1: memberModel1,
                //           avgWeightModel1: avgWeightModel1,
                //           marriedModel1: marriedModel1,
                //           avgFemaleModel1: avgFemaleModel1,
                //           avgPulseModel1: avgPulseModel1,
                //           widowModel1: widowModel1,
                //           avgHeightModel1: avgHeightModel1,
                //           nodiabeticModel1: nodiabeticModel1,
                //           hasdiabeticModel1: hasdiabeticModel1,
                //           singleModel1: singleModel1,
                //           nonmemberModel1: nonmemberModel1,
                //         )));
              },
              child: Text("Get")
          ),
        ),

      ),
    );
  }
}

