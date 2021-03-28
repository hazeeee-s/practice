import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
   String Message ='初めまして';


  void changeMessage(){
    Message = '久しぶりです';

    //変更したことを通知する
    notifyListeners();


  }

}