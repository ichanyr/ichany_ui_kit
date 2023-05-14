import 'package:ichany_ui_kit/module/dashboard/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:ichany_ui_kit/module/shared/util/widget/button/danger_button.dart';
import 'package:ichany_ui_kit/state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        navigatorKey: Get.navigatorKey,
        color: Color(0XFF917FB3),
        home: const DashboardView());
  }
}
