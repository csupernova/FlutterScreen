import 'package:flutter/material.dart';
import 'package:flutter_screen/ui/constants/colors.dart';
import 'package:flutter_screen/ui/profile/profile.dart';
import 'package:flutter_screen/ui/settings/settingsScreen.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Screen',
        theme: ThemeData(
            fontFamily: 'SFProText',
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
                color: AppColors.white,
                iconTheme: IconThemeData(color: AppColors.iconGreen))),
        home: const DefaultTabController(
          length: 2,
          child: MyHomePage(),
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
            children: [ProfileScreen(), settingsScreen()],
          )),
    );
  }
}
