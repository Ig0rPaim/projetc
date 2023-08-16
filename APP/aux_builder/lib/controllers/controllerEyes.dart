import 'package:get/get.dart';

class ControllerEyes extends GetxController{

    bool eyesValue = true;
    
    void visible(){
      eyesValue = !eyesValue;
      update();
    }

}