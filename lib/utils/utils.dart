import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architecture/res/colors/app_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils {
  static fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        //backgroundColor: AppColor.blackColor,
        gravity: ToastGravity.BOTTOM,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(
      title,
      message
    );
  }

}