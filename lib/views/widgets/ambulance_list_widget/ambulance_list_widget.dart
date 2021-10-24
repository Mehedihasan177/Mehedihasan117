import 'package:care_plus/models/ui_model/ambulance_model/ambulance_model.dart';
import 'package:care_plus/views/screens/ambulance_details/ambulance_details.dart';
import 'package:care_plus/views/screens/hospital_details_page/hospital_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget AmbulanceHospitalWidget(
  int id,
  String name,
  String hospital,
  String details,
  String phone_number,
  String address,
  String website,
  double latitude,
  double longtitude,
  bool nevigation,
  BuildContext context,
) {
  return GestureDetector(
    child: Card(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ID: " + id.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Name: " + name)),
              Container(alignment: Alignment.centerLeft, child: Text(hospital)),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Phone Number: " + phone_number)),
              Container(alignment: Alignment.centerLeft, child: Text(address)),
              Container(alignment: Alignment.centerLeft, child: Text(website)),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Latitude: " + latitude.toString())),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Longitude: " + longtitude.toString())),
            ],
          ),
        ),
      ),
    ),
    onTap: () {
      if (nevigation == true) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HospitalDetailsPage(name: name, hospital: hospital, phone_number: phone_number, address: address, website: website, latitude: latitude, longitude: longtitude )));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => AmbulanceDetailsPage(name: name, hospital: hospital,details: details, phone_number: phone_number, address: address, website: website, latitude: latitude, longitude: longtitude)));
      }
    },
  );
}
