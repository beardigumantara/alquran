import 'package:alquran/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "AL-QUR'AN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Text(
                "Mari Mengaji",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 300,
              child: Lottie.asset("assets/lotties/animation-alqur'an.json"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
