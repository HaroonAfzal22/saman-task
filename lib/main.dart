import 'package:flutter/material.dart';
import 'package:saman/Views/add_order%20_second_view.dart';
import 'package:saman/Views/addorder_first_view.dart';
import 'package:saman/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: firstView,
      routes: {
        firstView: (context) => const AddOrderFirstView(),
        secondView: (context) => const AddOrderSecondView(),
      },
    );
  }
}
