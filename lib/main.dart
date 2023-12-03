import 'package:flutter/material.dart';
import 'package:flutter_screen/constants/colors.dart';
import 'package:flutter_screen/ui/profile/filters/chips.dart';
import 'package:flutter_screen/ui/profile/profile.dart';
import 'package:flutter_screen/ui/topsection/topsection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Screen',
        theme: ThemeData(
            fontFamily: 'SFProText',
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
                color: Colors.white,
                iconTheme: IconThemeData(color: AppColors.iconGreen))),
        home: const DefaultTabController(
          child: MyHomePage(),
          length: 2,
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          headerSliverBuilder: (context, innerBoxInScrolled) =>
              [sliverAppBar()],
          body: const TabBarView(
            children: [profileScreen(), Text("HEll")],
          )),
    );
  }
}
