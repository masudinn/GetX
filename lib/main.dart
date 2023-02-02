import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("get x"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("${counterController.data.value}"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      counterController.increment();
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      counterController.decrement();
                    },
                    child: Text("-"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CounterController extends GetxController {
  var data = 0.obs;
  increment() {
    data = data + 1;
  }

  decrement() {
    data = data - 1;
  }
}
