import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/res/colors/app_color.dart';
import 'package:flutter_clean_architecture/res/components/round_button.dart';
import 'package:get/get.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralExceptionWidget({super.key, required this.onPress});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height *.15,),
          const Icon(Icons.cloud_off, color: AppColor.redColor, size: 52,),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(child: Text("general_exception".tr, textAlign: TextAlign.center,)),
          ),
          SizedBox(height: height *.15,),
          RoundButton(onPressed: () { print("Hello"); }, title: 'retry'.tr,),
          SizedBox(height: height *.15,),
        ],
      ),
    );
  }
}
