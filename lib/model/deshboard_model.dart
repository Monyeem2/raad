// To parse this JSON data, do
//
//     final avgPulseModel = avgPulseModelFromJson(jsonString);

import 'dart:convert';

AvgPulseModel avgPulseModelFromJson(String str) => AvgPulseModel.fromJson(json.decode(str));

String avgPulseModelToJson(AvgPulseModel data) => json.encode(data.toJson());

class AvgPulseModel {
  AvgPulseModel({
     required this.avgPulse,
  });

  dynamic avgPulse;

  factory AvgPulseModel.fromJson(Map<String, dynamic> json) => AvgPulseModel(
    avgPulse: json["avg_pulse"],
  );

  Map<String, dynamic> toJson() => {
    "avg_pulse": avgPulse,
  };
}
//
// // To parse this JSON data, do
// //
// //     final avgHeightModel = avgHeightModelFromJson(jsonString);
//
//
//
// AvgHeightModel avgHeightModelFromJson(String str) => AvgHeightModel.fromJson(json.decode(str));
//
// String avgHeightModelToJson(AvgHeightModel data) => json.encode(data.toJson());
//
// class AvgHeightModel {
//   AvgHeightModel({
//     required this.avgheight,
//   });
//
//   dynamic avgheight;
//
//   factory AvgHeightModel.fromJson(Map<String, dynamic> json) => AvgHeightModel(
//     avgheight: json["avgheight"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "avgheight": avgheight,
//   };
// }
//
//
//
// AvgWeightModel avgWeightModelFromJson(String str) => AvgWeightModel.fromJson(json.decode(str));
//
// String avgWeightModelToJson(AvgWeightModel data) => json.encode(data.toJson());
//
// class AvgWeightModel {
//   AvgWeightModel({
//      required this.avgweight,
//   });
//
//   dynamic avgweight;
//
//   factory AvgWeightModel.fromJson(Map<String, dynamic> json) => AvgWeightModel(
//     avgweight: json["avgweight"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "avgweight": avgweight,
//   };
// }
//
//
// // To parse this JSON data, do
// //
// //     final avgFemaleModel = avgFemaleModelFromJson(jsonString);
//
//
//
// AvgFemaleModel avgFemaleModelFromJson(String str) => AvgFemaleModel.fromJson(json.decode(str));
//
// String avgFemaleModelToJson(AvgFemaleModel data) => json.encode(data.toJson());
//
// class AvgFemaleModel {
//   AvgFemaleModel({
//     required this.female,
//   });
//
//   dynamic female;
//
//   factory AvgFemaleModel.fromJson(Map<String, dynamic> json) => AvgFemaleModel(
//     female: json["female"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "female": female,
//   };
// }
//
//
// // To parse this JSON data, do
// //
// //     final hasdiabeticModel = hasdiabeticModelFromJson(jsonString);
//
//
// HasdiabeticModel hasdiabeticModelFromJson(String str) => HasdiabeticModel.fromJson(json.decode(str));
//
// String hasdiabeticModelToJson(HasdiabeticModel data) => json.encode(data.toJson());
//
// class HasdiabeticModel {
//   HasdiabeticModel({
//     required this.hasdiabetic,
//   });
//
//   dynamic hasdiabetic;
//
//   factory HasdiabeticModel.fromJson(Map<String, dynamic> json) => HasdiabeticModel(
//     hasdiabetic: json["hasdiabetic"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "hasdiabetic": hasdiabetic,
//   };
// }
//
//
// // To parse this JSON data, do
// //
// //     final maleModel = maleModelFromJson(jsonString);
//
//
// MaleModel maleModelFromJson(String str) => MaleModel.fromJson(json.decode(str));
//
// String maleModelToJson(MaleModel data) => json.encode(data.toJson());
//
// class MaleModel {
//   MaleModel({
//     required this.male,
//   });
//
//   dynamic male;
//
//   factory MaleModel.fromJson(Map<String, dynamic> json) => MaleModel(
//     male: json["male"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "male": male,
//   };
// }
//
//
//
// // To parse this JSON data, do
// //
// //     final marriedModel = marriedModelFromJson(jsonString);
//
//
// MarriedModel marriedModelFromJson(String str) => MarriedModel.fromJson(json.decode(str));
//
// String marriedModelToJson(MarriedModel data) => json.encode(data.toJson());
//
// class MarriedModel {
//   MarriedModel({
//     required this.married,
//   });
//
//   dynamic married;
//
//   factory MarriedModel.fromJson(Map<String, dynamic> json) => MarriedModel(
//     married: json["married"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "married": married,
//   };
// }
//
//
// // To parse this JSON data, do
// //
// //     final memberModel = memberModelFromJson(jsonString);
//
//
//
// MemberModel memberModelFromJson(String str) => MemberModel.fromJson(json.decode(str));
//
// String memberModelToJson(MemberModel data) => json.encode(data.toJson());
//
// class MemberModel {
//   MemberModel({
//     required this.member,
//   });
//
//   dynamic member;
//
//   factory MemberModel.fromJson(Map<String, dynamic> json) => MemberModel(
//     member: json["member"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "member": member,
//   };
// }
//
//
// // To parse this JSON data, do
// //
// //     final nodiabeticModel = nodiabeticModelFromJson(jsonString);
//
//
// NodiabeticModel nodiabeticModelFromJson(String str) => NodiabeticModel.fromJson(json.decode(str));
//
// String nodiabeticModelToJson(NodiabeticModel data) => json.encode(data.toJson());
//
// class NodiabeticModel {
//   NodiabeticModel({
//     required this.nodiabetic,
//   });
//
//   dynamic nodiabetic;
//
//   factory NodiabeticModel.fromJson(Map<String, dynamic> json) => NodiabeticModel(
//     nodiabetic: json["nodiabetic"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "nodiabetic": nodiabetic,
//   };
// }
//
//
//
// // To parse this JSON data, do
// //
// //     final nonmemberModel = nonmemberModelFromJson(jsonString);
//
//
//
// NonmemberModel nonmemberModelFromJson(String str) => NonmemberModel.fromJson(json.decode(str));
//
// String nonmemberModelToJson(NonmemberModel data) => json.encode(data.toJson());
//
// class NonmemberModel {
//   NonmemberModel({
//     required this.nonmember,
//   });
//
//   dynamic nonmember;
//
//   factory NonmemberModel.fromJson(Map<String, dynamic> json) => NonmemberModel(
//     nonmember: json["nonmember"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "nonmember": nonmember,
//   };
// }
//
//
// // To parse this JSON data, do
// //
// //     final singleModel = singleModelFromJson(jsonString);
//
//
//
// SingleModel singleModelFromJson(String str) => SingleModel.fromJson(json.decode(str));
//
// String singleModelToJson(SingleModel data) => json.encode(data.toJson());
//
// class SingleModel {
//   SingleModel({
//     required this.single,
//   });
//
//   dynamic single;
//
//   factory SingleModel.fromJson(Map<String, dynamic> json) => SingleModel(
//     single: json["single"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "single": single,
//   };
// }
//
//
//
// // To parse this JSON data, do
// //
// //     final widowModel = widow
//
// WidowModel widowModelFromJson(String str) => WidowModel.fromJson(json.decode(str));
//
// String widowModelToJson(WidowModel data) => json.encode(data.toJson());
//
// class WidowModel {
//   WidowModel({
//     required this.widow,
//   });
//
//   dynamic widow;
//
//   factory WidowModel.fromJson(Map<String, dynamic> json) => WidowModel(
//     widow: json["widow"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "widow": widow,
//   };
// }
//
//
