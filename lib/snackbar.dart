import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SnackBars(),
    );
  }
}

class SnackBars extends StatelessWidget {
  const SnackBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //       content: Text("halo"),
              //       action: SnackBarAction(label: "cancel", onPressed: () {})),
              // );
              Get.snackbar("halo", "message");
            },
            child: Text("Open snackbar")),
      ),
    );
  }
}
