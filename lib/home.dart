import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/logic_controller.dart';
import 'package:state_management/screen_one.dart';

class HomePage extends StatelessWidget {
  final logicController = Get.put(LogicController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Obx(() => Text("Count numer: ${logicController.count}")),
              onTap: () {
                Get.to(ScreenOne());
                // Route route = MaterialPageRoute(
                //     builder: (ctx) => ScreenOne(
                //           count: count,
                //         ));
                // Navigator.push(context, route);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("Count number: ${logicController.count}"),
            ),
            Obx(
              () => Text("Count double: ${logicController.countDouble}"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logicController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
