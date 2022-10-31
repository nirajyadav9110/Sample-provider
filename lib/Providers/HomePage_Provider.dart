import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier{

  int? Ans = 0;

  addition(int val1 , int val2)
  {
    Ans = val1 + val2 ;
    notifyListeners();
  }

  substraction(int val1 , int val2)
  {
    Ans = val1 - val2 ;
    notifyListeners();
  }
  multiplication(int val1 , int val2)
  {
    Ans = val1 * val2 ;
    notifyListeners();
  }
  division (int val1 , int val2)
  {
    Ans = (val1/val2) as int?;
    notifyListeners();
  }
 }