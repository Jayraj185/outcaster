import 'package:flutter/cupertino.dart';

class iosProvider extends ChangeNotifier
{
  bool swich=false;
  bool swich2=false;
  bool swich3=false;
  void Change(bool swi)
  {
    swich=swi;
    notifyListeners();
  }
  void Change2(bool swi)
  {
    swich2=swi;
    notifyListeners();
  }
  void Change3(bool swi)
  {
    swich3=swi;
    notifyListeners();
  }
}