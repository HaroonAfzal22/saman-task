import 'package:flutter/material.dart';
import 'package:saman/Constants/app_colors.dart';
import 'package:saman/Constants/app_icons.dart';
import 'package:saman/Constants/app_text.dart';
import 'package:saman/comon_widget.dart';

class AddOrderSecondView extends StatelessWidget {
  const AddOrderSecondView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    NameTextWidget(
                      color: AppColor.darkGreen,
                      text: AppText.hassanGlass,
                    ),
                    NumberTextWidget(
                      color: AppColor.darkGreen,
                      text: '\t00000\t',
                    ),
                    NameTextWidget(
                      color: AppColor.darkGreen,
                      text: AppText.umairIqbal,
                    ),
                  ],
                ),
              ),
              DividerWidget(
                color: AppColor.darkGreen,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                IconWidget(
                  path: Appicons.bricksIcon,
                ),
                IconWidget(
                  path: Appicons.cowIcon,
                ),
                IconWidget(
                  path: Appicons.fridgeIcon,
                ),
                IconWidget(
                  path: Appicons.armChairIcon,
                ),
              ]),
              TileWithIconWidget(
                height: height,
                width: width,
                text: AppText.miniFridge,
              ),
              TileWithIconWidget(
                height: height,
                width: width,
                text: AppText.fridge,
              ),
              TileWithIconWidget(
                height: height,
                width: width,
                text: AppText.frezer,
              ),
              TileWithIconWidget(
                height: height,
                width: width,
                text: AppText.washingMachine,
              ),
              TileWithIconWidget(
                height: height,
                width: width,
                text: AppText.washingMachineWithDryer,
              ),
              TileWithIconWidget(
                height: height,
                width: width,
                text: AppText.lcdTv,
              ),
              TileWithIconWidget(
                height: height,
                width: width,
                text: AppText.fan,
              ),
              TileWithIconWidget(
                height: height,
                width: width,
                text: AppText.microWave,
              ),
              TileWithIconWidget(
                height: height,
                width: width,
                text: AppText.stove,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      bottom: 1,
                      top: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: width * 0.72,
                    child: TextField(
                      maxLines: 4,
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
                ],
              ),
              backButton()
            ],
          ),
        ),
      ),
    ));
  }
}

class backButton extends StatelessWidget {
  const backButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 50,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: AppColor.darkGreen),
        child: Text(
          AppText.back,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'Jameel',
              color: AppColor.white,
              fontSize: 36),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class TileWithIconWidget extends StatelessWidget {
  TileWithIconWidget({
    required this.text,
    super.key,
    required this.height,
    required this.width,
  });
  String text;

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularIcon(icon: Icons.add),
        TextTileWidget(
          height: height,
          width: width,
          text: text,
        ),
        CircularIcon(icon: Icons.remove_outlined)
      ],
    );
  }
}

class CircularIcon extends StatelessWidget {
  CircularIcon({
    required this.icon,
    super.key,
  });
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: AppColor.darkGreen, borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Icon(
          icon,
          color: AppColor.white,
          size: 40,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextTileWidget extends StatelessWidget {
  TextTileWidget({
    required this.text,
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5, right: 10, left: 10),
        padding: const EdgeInsets.all(2),
        height: height * 0.05,
        width: width * 0.49,
        decoration: BoxDecoration(
            color: AppColor.skyBlue, borderRadius: BorderRadius.circular(5)),
        child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'Jameel',
              color: Colors.white,
              fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}

class IconWidget extends StatelessWidget {
  IconWidget({
    required this.path,
    super.key,
  });
  String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 31.56,
      width: 41.5,
      decoration: BoxDecoration(
          color: AppColor.darkGreen, borderRadius: BorderRadius.circular(5)),
      child: Image.asset(
        path,
        // fit: BoxFit.fill,
      ),
    );
  }
}
