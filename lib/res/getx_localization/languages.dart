import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "en_US": {
      "enter_email": "Enter Email",
      "internet_exception":"We are enable to show results.\nPlease check your Internet Connection.",
      "general_exception": "We are enable to process request.\nPlease try again."
    },
    "hi_IN": {
      "enter_email": "ईमेल दर्ज करें",
    }
  };

}