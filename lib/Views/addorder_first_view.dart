import 'dart:developer' show log;

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:saman/Constants/app_colors.dart';
import 'package:saman/Constants/app_text.dart';
import 'package:saman/comon_widget.dart';
import 'package:saman/routes.dart';

class AddOrderFirstView extends StatefulWidget {
  const AddOrderFirstView({super.key});

  @override
  State<AddOrderFirstView> createState() => _AddOrderFirstViewState();
}

class _AddOrderFirstViewState extends State<AddOrderFirstView> {
  bool switchValue = false;
  bool checkValue = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.darkGreen,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Row(
                    children: [
                      NameTextWidget(color: AppColor.textlightGreen,
                        text: AppText.hassanGlass,
                      ),
                      NumberTextWidget(color: AppColor.textlightGreen,
                        text: '\t00000\t',
                      ),
                      NameTextWidget(color: AppColor.textlightGreen,
                        text: AppText.umairIqbal,
                      ),
                    ],
                  ),
                ),
                DividerWidget(color:  AppColor.textlightGreen,),
                TextFieldNameWidget(
                  boxWidth: width * 0.2,
                  text: AppText.name,
                  width: width,
                  keyBoardType: TextInputType.text,
                ),
                TextFieldNameWidget(
                  boxWidth: width * 0.04,
                  text: AppText.phoneNumber,
                  width: width,
                  keyBoardType: TextInputType.phone,
                ),
                // dropDown Start

                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: width * 0.5,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColor.lightGreen,
                          border: Border.all(
                              color: AppColor.lightGreen,
                              width: 0.0), // Set border color and width
                          borderRadius:
                              BorderRadius.circular(5.0), // Set border radius
                        ),
                        child: DropdownButton<String>(
                          style: TextStyle(
                            color: AppColor.darkGreen,
                          ), // Set text color
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: AppColor.darkGreen,
                            size: 35,
                          ), // Set dropdown arrow color
                          items: <String>[
                            '',
                            'Option 2',
                            'Option 3',
                            'Option 4'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (Value) {},
                          value: '', // Set the initial selected value
                        ),
                      ),
                      SizedBox(
                        width: width * 0.11,
                      ),
                      NameTextWidget(text: AppText.tak,color: AppColor.textlightGreen,)
                    ],
                  ),
                ),
                // ----Switch button start // end of tak drop down -----------

                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterSwitch(
                        activeColor: AppColor.lightGreen,
                        inactiveColor: AppColor.dalGreen,
                        inactiveToggleColor: AppColor.darkGreen,
                        width: 60.0,
                        height: 30.0,
                        valueFontSize: 25.0,
                        toggleSize: 25.0,
                        value: switchValue,
                        borderRadius: 25.0,
                        padding: 8.0,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            switchValue = val;
                          });
                        },
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      NameTextWidget(text: AppText.decidedPrice,color: AppColor.textlightGreen,),
                    ],
                  ),
                ),
                // ----end of switch button -----------
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      NameTextWidget(text: AppText.vehicalType,color: AppColor.textlightGreen,),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      NameTextWidget(text: AppText.shopePrice,color: AppColor.textlightGreen,)
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RightIconDropDownWidget(
                        width: width,
                        listItem: ' ',
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Container(
                        height: 40,
                        width: width * 0.39,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColor.dalGreen,
                            hintText: '',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RightIconDropDownWidget(
                      width: width,
                      listItem: AppText.whentext,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    RightIconDropDownWidget(
                      width: width,
                      listItem: AppText.destonation,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: 200,
                            child: NameTextWidget(text: AppText.luaggage,color: AppColor.textlightGreen,)),
                        BtnWidget(
                          text: AppText.enterLuaggage,
                          color: AppColor.white,
                          onTap: () {
                            Navigator.pushNamed(context, secondView);
                          },
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                value: checkValue,
                                visualDensity: VisualDensity(
                                  vertical: -4.0,
                                ),
                                checkColor: AppColor.darkGreen,
                                activeColor: AppColor.dalGreen,
                                onChanged: (Value) {
                                  setState(() {
                                    checkValue = Value!;
                                  });
                                },
                              ),
                            ),
                            BtnWidget(
                              text: '',
                              color: AppColor.dalGreen,
                              onTap: () {},
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: AppColor.dalGreen, width: 2)),
                          height: 120,
                          width: 280,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColor.darkGreen,
                              hintText: '', // Optional: Add a placeholder text
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            // Optional: You can set the text direction to right-to-left (for Urdu)
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        AddOrderBtnWidget(
                          text: AppText.enterOrder,
                          color: AppColor.white,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddOrderBtnWidget extends StatelessWidget {
  AddOrderBtnWidget({
    required this.onTap,
    required this.color,
    required this.text,
    super.key,
  });
  String text;
  Color color;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 40),
        alignment: Alignment.center,
        child: NameBtnWidget(text: text),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        height: 51,
        width: 134,
      ),
    );
  }
}

// ignore: must_be_immutable
class BtnWidget extends StatelessWidget {
  BtnWidget({
    required this.onTap,
    required this.color,
    required this.text,
    super.key,
  });
  String text;
  Color color;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        alignment: Alignment.center,
        child: NameBtnWidget(text: text),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        height: 40,
        width: 220,
      ),
    );
  }
}

// ignore: must_be_immutable
class RightIconDropDownWidget extends StatelessWidget {
  RightIconDropDownWidget({
    required this.listItem,
    super.key,
    required this.width,
  });

  final double width;
  String listItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: width * 0.39,
      height: 40,
      decoration: BoxDecoration(
        color: AppColor.dalGreen,
        border: Border.all(color: AppColor.lightGreen, width: 0.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: DropdownButton<String>(
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: 'Jameel',
          color: Colors.black,
        ),
        icon: const Icon(
          Icons.arrow_drop_down,
          color: AppColor.darkGreen,
          size: 40,
        ),
        items: <String>[listItem].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (Value) {},
        value: listItem,
      ),
    );
  }
}

// ignore: must_be_immutable
class TextFieldNameWidget extends StatelessWidget {
  TextFieldNameWidget({
    this.boxWidth,
    this.widthSize,
    required this.text,
    required this.keyBoardType,
    super.key,
    required this.width,
  });

  final double width;
  double? boxWidth;
  String text;
  double? widthSize;
  TextInputType keyBoardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: width * 0.5,
            child: TextField(
              keyboardType: keyBoardType,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColor.lightGreen,
                hintText: '', // Optional: Add a placeholder text
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              // Optional: You can set the text direction to right-to-left (for Urdu)
              textDirection: TextDirection.rtl,
            ),
          ),
          SizedBox(
            width: boxWidth,
          ),
          NameTextWidget(text: text,color: AppColor.textlightGreen,)
        ],
      ),
    );
  }
}


// ignore: must_be_immutable


// ignore: must_be_immutable

// btnTextWidget
// ignore: must_be_immutable
class NameBtnWidget extends StatelessWidget {
  NameBtnWidget({
    required this.text,
    super.key,
  });
  String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Jameel',
            color: Colors.black,
            fontSize: 28),
      ),
    );
  }
}
