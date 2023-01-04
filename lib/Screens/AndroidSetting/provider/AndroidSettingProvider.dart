import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AndroidProvider extends  ChangeNotifier
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