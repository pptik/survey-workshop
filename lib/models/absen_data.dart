// To parse this JSON data, do
//
//     final absenData = absenDataFromJson(jsonString);

import 'dart:convert';

AbsenData absenDataFromJson(String str) => AbsenData.fromJson(json.decode(str));

String absenDataToJson(AbsenData data) => json.encode(data.toJson());

class AbsenData {
  String id;
  String name;
  String long;
  String lat;
  String address;
  String status;
  String localImage;
  int timestamp;
  String image;
  String guid;
  String company;
  String unit;
  String description;
  String type;
  String reportType;

  AbsenData(
      {this.id,
        this.name,
        this.long,
        this.lat,
        this.address,
        this.status,
        this.localImage,
        this.timestamp,
        this.image,
        this.guid,
        this.company,
        this.unit,
        this.description,
        this.type,
        this.reportType});

  factory AbsenData.fromJson(Map<String, dynamic> json) => AbsenData(
      id: json["_id"],
      name: json["NAME"],
      long: json["LONG"],
      lat: json["LAT"],
      address: json["ADDRESS"],
      status: json["STATUS"],
      localImage: json["LOCAL_IMAGE"],
      timestamp: json["TIMESTAMP"],
      image: json["IMAGE"],
      guid: json["GUID"],
      company: json["COMPANY"],
      unit: json["UNIT"],
      description: json["DESCRIPTION"],
      type: json["TYPE"],
      reportType: json["REPORT_TYPE"]);

  Map<String, dynamic> toJson() => {
    "_id": id,
    "NAME": name,
    "LONG": long,
    "LAT": lat,
    "ADDRESS": address,
    "STATUS": status,
    "LOCAL_IMAGE": localImage,
    "TIMESTAMP": timestamp,
    "IMAGE": image,
    "GUID": guid,
    "COMPANY": company,
    "UNIT": unit,
    "DESCRIPTION": description,
    "TYPE": type,
    "REPORT_TYPE": reportType
  };
}
