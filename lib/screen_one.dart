import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/logic_controller.dart';

class ScreenOne extends StatelessWidget {
  final logicController = Get.put(LogicController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Obx(() => Text("Count dnumber: ${logicController.count}")),
            Obx(() => Text("Count dnumber: ${logicController.countDouble}")),
            ElevatedButton(
                onPressed: () {
                  logicController.incrementDouble();
                },
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}
