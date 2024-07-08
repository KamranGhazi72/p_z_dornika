
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../blocs/bottom_nav_cubit.dart';

class BottomNav extends StatelessWidget {
  final PageController controller;

  const BottomNav({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    TextTheme textTheme = Theme.of(context).textTheme;

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      color: Colors.white,
      child: SizedBox(
        height: 72,
        child: BlocBuilder<BottomNavCubit, int>(
          builder: (context, int state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 72,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            /// change selected index
                            BlocProvider.of<BottomNavCubit>(context).changeSelectedIndex(0);
                            controller.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                          },
                          icon: SvgPicture.asset(
                            state == 0 ? "assets/images/home-icon-filled.svg" : "assets/images/home-icon-outline.svg",
                            colorFilter: state == 0 ? ColorFilter.mode(Colors.red, BlendMode.srcIn) : ColorFilter.mode(Colors.grey.shade700, BlendMode.srcIn),
                            width: 35,
                          ),
                      ),
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<BottomNavCubit>(context).changeSelectedIndex(1);
                            controller.animateToPage(1, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                          },
                          icon: SvgPicture.asset(
                            state == 1
                                ? "assets/images/category-icon-filled.svg"
                                : "assets/images/category-icon-outline.svg" ,
                            colorFilter: state == 1 ? ColorFilter.mode(Colors.red, BlendMode.srcIn) : ColorFilter.mode(Colors.grey.shade700, BlendMode.srcIn),
                            width: 35,
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 72,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () async {
                              BlocProvider.of<BottomNavCubit>(context).changeSelectedIndex(2);
                              controller.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                          },
                          icon: SvgPicture.asset(state == 2 ? "assets/images/courses-icon-filled.svg" : "assets/images/courses-icon-outline.svg",
                            colorFilter: state == 2 ? ColorFilter.mode(Colors.red, BlendMode.srcIn) : ColorFilter.mode(Colors.grey.shade700, BlendMode.srcIn),
                            width: 35,),
                      ),
                      IconButton(
                          onPressed: () async {
                            BlocProvider.of<BottomNavCubit>(context).changeSelectedIndex(3);
                            controller.animateToPage(3, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                          },
                          icon: SvgPicture.asset(state == 3 ? "assets/images/profile-icon-filled.svg" : "assets/images/profile-icon-outline.svg",
                            colorFilter: state == 3 ? ColorFilter.mode(Colors.red, BlendMode.srcIn) : ColorFilter.mode(Colors.grey.shade700, BlendMode.srcIn)
                            ,width: 35,),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }


  Future<bool> getDataFromPrefs() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final bool loggedIn = prefs.getBool('user_loggedIn') ?? false;

    return loggedIn;
  }
}
