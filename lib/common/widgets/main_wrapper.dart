import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pouya_zehn_dornika/common/blocs/web_sidebar_cubit.dart';
import 'package:pouya_zehn_dornika/config/responsive.dart';
import 'package:pouya_zehn_dornika/features/feature_courses/presentation/screen/courses_screen.dart';
import '../../config/my_theme.dart';
import '../../features/feature_category/presentation/screen/category_screen.dart';
import '../../features/feature_home/presentation/screen/home_screen.dart';
import '../../locator.dart';
import 'bottom_nav.dart';
import 'web-sidebar.dart';

class MainWrapper extends StatefulWidget {
  static const routeName = "/main_wrapper";

  MainWrapper({Key? key}) : super(key: key);

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int currentIndex = 0;
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  PageController pageController = PageController();

  List<Widget> mobileScreens = [
    HomeScreen(),
    CategoryScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];

  List<Widget> desktopScreens = [
    HomeScreen(),
    CoursesScreen(),
    CategoryScreen(),
    Container(
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Scaffold(
        bottomNavigationBar: BottomNav(controller: pageController),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: mobileScreens,
                ),
              ),
            ],
          ),
        ),
      ),
      tablet: Scaffold(
        key: drawerKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        drawer: Container(
          padding: const EdgeInsets.all(25.0),
          width: 300,
          decoration: BoxDecoration(
            color: MyThemes.lightTheme.primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
            ),
          ),child: WebSidebar(),
        ),
        body: BlocBuilder<WebSidebarCubit, int>(
          builder: (context, count) => Container(
            margin: const EdgeInsets.only(
                top: 5.0, bottom: 15.0, left: 30.0, right: 10.0),
            padding: const EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              color: MyThemes.lightTheme.primaryColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: desktopScreens[count],
          ),
        ),
      ),
      desktop: Scaffold(
        body: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 1400,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(margin: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 30.0),
                    padding: const EdgeInsets.all(25.0),
                    width: 300,
                    decoration: BoxDecoration(
                      color: MyThemes.lightTheme.primaryColor,
                      borderRadius: BorderRadius.circular(16.0),
                    ),child: WebSidebar(),
                ),
                Expanded(
                  child: BlocBuilder<WebSidebarCubit, int>(
                    builder: (context, count) => Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 15.0, left: 30.0, right: 10.0),
                      child: desktopScreens[count],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
