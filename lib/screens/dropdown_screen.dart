import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:task/core/func/func.dart';
import 'package:task/data/db.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

String selectedR = '';
String selectedD = '';
final textCon = TextEditingController();
final textCon2 = TextEditingController();

class _DropdownScreenState extends State<DropdownScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.green.shade900,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: width * .1),
            child: Image.asset(
              'assets/image.png',
              width: width * .45,
              height: height * .45,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * .09),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Viloyat',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(height: height * .05),
                SizedBox(
                    width: width * .8,
                    child: CustomDropdown.search(
                      fillColor: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                      fieldSuffixIcon: Icon(Icons.arrow_drop_down,
                          size: 35, color: Colors.white),
                      hintText: 'Viloyatni tanlang',
                      hintStyle: TextStyle(color: Colors.white),
                      items: MyDB.regions,
                      controller: textCon,
                      listItemStyle: TextStyle(color: Colors.black),
                      selectedStyle: TextStyle(color: Colors.white),
                      onChanged: (v) {
                        setState(() {
                          selectedR = v;
                        });
                      },
                    )),
                SizedBox(height: height * .05),
                Text(
                  'Tuman',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(height: height * .05),
                SizedBox(
                    width: width * .8,
                    child: CustomDropdown.search(
                      fillColor: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                      fieldSuffixIcon: Icon(Icons.arrow_drop_down,
                          size: 35, color: Colors.white),
                      hintText: 'Tumanni tanlang',
                      hintStyle: TextStyle(color: Colors.white),
                      items: selectedR.isEmpty
                          ? MyDB.regions
                          : Func.returnDistrict(selectedR),
                      controller: textCon2,
                      listItemStyle: TextStyle(color: Colors.black),
                      onChanged: (v) {
                        setState(() {
                          v = selectedD;
                        });
                      },
                      selectedStyle: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
          SizedBox(height: height * .07),
          Container(
            margin: EdgeInsets.only(left: width * .05),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(20)),
            width: width * .4,
            height: height * .07,
            child: Center(
                child: Text(
              'Boshlash',
              style: TextStyle(color: Colors.black, fontSize: 18),
            )),
          )
        ]),
      ),
    );
  }
}
