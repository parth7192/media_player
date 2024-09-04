import 'package:get/get.dart';

class SliderController extends GetxController {
  RxInt sliderValue = 0.obs;

  int get value => sliderValue.value;

  void changeIndex(int index) {
    sliderValue.value = index;
  }
}
