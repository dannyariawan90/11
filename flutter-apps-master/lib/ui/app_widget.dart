import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/image/trace_controller.dart';
import 'page/home/home_page.dart';
import 'style/colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TraceController(),
      child: MaterialApp(
        title: 'myApp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: white),
        home: const HomePage(),
      ),
    );
  }
}
