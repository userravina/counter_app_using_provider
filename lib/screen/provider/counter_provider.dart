import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
{
   int no = 0;

   void plus1()
   {
     no++;
     notifyListeners();
   }
   void multi2()
   {
     no = no * 2;
     notifyListeners();
   }
   void multi3()
   {
     no*=3;
     notifyListeners();
   }
   void multi4()
   {
     no*=4;
     notifyListeners();
   }
   void min1()
   {
     no--;
     notifyListeners();
   }
   void reset()
   {
     no = 1;
     notifyListeners();
   }
}