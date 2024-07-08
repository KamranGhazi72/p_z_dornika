import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pouya_zehn_dornika/config/my_theme.dart';

import '../blocs/web_sidebar_cubit.dart';

class WebSidebar extends StatelessWidget {

  const WebSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WebSidebarCubit, int>(
  builder: (context, selected) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: SvgPicture.asset("assets/images/Hekmat-icon.svg"),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<WebSidebarCubit>(context).changeSidebarIndex(0);
          },
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              color: selected == 0 ? Color(0xFFF2F8FE) : Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: SvgPicture.asset("assets/images/home-icon-outline.svg",
                        width: 25.0,
                        colorFilter: ColorFilter.mode(selected == 0 ? MyThemes.lightTheme.primaryColorLight : Colors.grey.shade700, BlendMode.srcIn),
                      ),
                    ),
                    Text("صفحه نخست", style: TextStyle(
                      color: selected == 0 ? MyThemes.lightTheme.primaryColorLight : Colors.grey.shade700,
                      fontSize: selected == 0 ? 13 : 11,
                      fontWeight: selected == 0 ? FontWeight.bold : FontWeight.w400,
                    ),),
                  ],
                ),
                selected == 0 ?
                Container(
                  width: 12.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: MyThemes.lightTheme.primaryColorLight,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                    )
                  ),
                ):Container(),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<WebSidebarCubit>(context).changeSidebarIndex(1);
          },
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              color: selected == 1 ? Color(0xFFF2F8FE) : Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: SvgPicture.asset("assets/images/courses-icon-outline.svg",
                        width: 25.0,
                        colorFilter: ColorFilter.mode(selected == 1 ? MyThemes.lightTheme.primaryColorLight : Colors.grey.shade700, BlendMode.srcIn),
                      ),
                    ),
                    Text("دوره ها", style: TextStyle(
                      color: selected == 1 ? MyThemes.lightTheme.primaryColorLight : Colors.grey.shade700,
                      fontSize: selected == 1 ? 13 : 11,
                      fontWeight: selected == 1 ? FontWeight.bold : FontWeight.w400,
                    ),),
                  ],
                ),
                selected == 1 ?
                Container(
                  width: 12.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: MyThemes.lightTheme.primaryColorLight,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        bottomLeft: Radius.circular(12.0),
                      )
                  ),
                ):Container(),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<WebSidebarCubit>(context).changeSidebarIndex(2);
          },
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              color: selected == 2 ? Color(0xFFF2F8FE) : Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: SvgPicture.asset("assets/images/category-icon-outline.svg",
                        width: 25.0,
                        colorFilter: ColorFilter.mode(selected == 2 ? MyThemes.lightTheme.primaryColorLight : Colors.grey.shade700, BlendMode.srcIn),
                      ),
                    ),
                    Text("دسته بندی", style: TextStyle(
                      color: selected == 2 ? MyThemes.lightTheme.primaryColorLight : Colors.grey.shade700,
                      fontSize: selected == 2 ? 13 : 11,
                      fontWeight: selected == 2 ? FontWeight.bold : FontWeight.w400,
                    ),),
                  ],
                ),
                selected == 2 ?
                Container(
                  width: 12.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: MyThemes.lightTheme.primaryColorLight,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        bottomLeft: Radius.circular(12.0),
                      )
                  ),
                ):Container(),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<WebSidebarCubit>(context).changeSidebarIndex(3);
          },
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              color: selected == 3 ? Color(0xFFF2F8FE) : Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: SvgPicture.asset("assets/images/aboutUs-icon.svg",
                        width: 25.0,
                        colorFilter: ColorFilter.mode(selected == 3 ? MyThemes.lightTheme.primaryColorLight : Colors.grey.shade700, BlendMode.srcIn),
                      ),
                    ),
                    Text("درباره ما", style: TextStyle(
                      color: selected == 3 ? MyThemes.lightTheme.primaryColorLight : Colors.grey.shade700,
                      fontSize: selected == 3 ? 13 : 11,
                      fontWeight: selected == 3 ? FontWeight.bold : FontWeight.w400,
                    ),),
                  ],
                ),
                selected == 3 ?
                Container(
                  width: 12.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: MyThemes.lightTheme.primaryColorLight,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        bottomLeft: Radius.circular(12.0),
                      )
                  ),
                ):Container(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
            height: 200,
            child: SvgPicture.asset("assets/images/call-center-img.svg"),
        ),
        Center(
          child: SizedBox(
            width: 160,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                //TODO: go to contact us btn Func
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: MyThemes.lightTheme.primaryColorLight,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              child: Text("تماس با ما",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.white,
              ),),),
          ),
        ),
      ],
    );
  },
);
  }
}
