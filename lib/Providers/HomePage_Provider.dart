import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier{
  bool? isEligible;
  String? eligibilitymessage ='';

  void checkEligibility(int age){
    if(age >= 18){
      isEligible = true;
      eligibilitymessage ="You are Eligible!";
      notifyListeners();
    }
    else{
      isEligible = false;
      eligibilitymessage ="You are not Eligible!";
      notifyListeners();
    }
  }
}