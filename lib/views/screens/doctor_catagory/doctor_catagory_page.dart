import 'package:care_plus/data/specialist_information/getInformation.dart';
import 'package:care_plus/models/ui_model/specialist_information/information_model.dart';
import 'package:care_plus/views/screens/navbar_pages/bottomnevigation.dart';
import 'package:care_plus/views/widgets/find_by_specialist_widget/find_by_specialist_widget.dart';
import 'package:flutter/material.dart';

class DoctorCatagory extends StatefulWidget {
  const DoctorCatagory({Key? key}) : super(key: key);

  @override
  _DoctorCatagoryState createState() => _DoctorCatagoryState();
}

class _DoctorCatagoryState extends State<DoctorCatagory> {
  List<Diseasesinformation> informationslist = List.of(GetInformation);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: () async {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => BottomNevigation()));
        return true;
      },
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 10,right: 10, top: 60),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black),
                  scrollPadding: EdgeInsets.all(10),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 14),
                    border: InputBorder.none,
                    hintText: "Search your doctor",
                    hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 15),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: Color(0xFF1CBFA8),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: (1 / .9),
                  crossAxisCount: 4,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: informationslist.length,
                itemBuilder: (context, index) {
                  Diseasesinformation information = informationslist[index];
                  return Findspecialist(information, index, context);
                },
              ),
            ),
          ],
        )
      ),
    );
  }
}
