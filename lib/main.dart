import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohan_new/SingupPage.dart';
import 'package:mohan_new/page_test.dart';

import 'carrer_graph.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var sizeh = MediaQuery
        .of(context)
        .size
        .height;
    var sizew = MediaQuery
        .of(context)
        .size
        .width;

    return ScreenUtilInit(
        designSize: Size(sizew, sizeh),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
              useMaterial3: true,
            ),
            home:   const CarrerGraph(),
          );
        }
    );
  }
}
