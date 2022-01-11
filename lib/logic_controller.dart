import 'package:get/get.dart';

class LogicController extends GetxController {
  RxInt count = 0.obs;

  RxInt countDouble = 0.obs;

  void increment() {
    count++;
  }

  void incrementDouble() {
    countDouble = countDouble + 2;
  }
}
