import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../config/my_theme.dart';
import '../../../../config/responsive.dart';

class CourseDetailScreen extends StatefulWidget {
  static const routeName = "/course_detail_screen";

  const CourseDetailScreen({super.key});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Responsive(
        mobile: Container(),
        tablet: Container(),



        desktop: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            constraints: const BoxConstraints(
              maxWidth: 1400,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 3.0,
                        spreadRadius: 3.0,
                      )
                    ],
                  ),
                  child: Text("صفحه اصلی / دسته بندی / دوره فلان / درس بهمان",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade700,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    children: [
                      Column(),


                      SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(20.0),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 3.0,
                                    spreadRadius: 3.0,
                                  )
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text("چگونه کودکان را در مسیر درست زندگی قرار دهیم!؟",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style:  MyThemes.lightTheme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                                    child: Divider(
                                      height: 0.5,
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("هزینه دوره",style:  MyThemes.lightTheme.textTheme.bodyMedium),
                                      Text("1,990,000 تومان",style:  MyThemes.lightTheme.textTheme.bodyLarge),
                                    ],
                                  ),
                                  const SizedBox(height: 10.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        child: ElevatedButton(onPressed: () {

                                        }, child: Row(
                                          children: [
                                            SvgPicture.asset("assets/images/cart-icon.svg",
                                              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                              width: 22,
                                              height: 22,
                                            ),
                                            SizedBox(width: 10.0),
                                            Text("افزودن دوره به سبد سفارش",
                                              style: MyThemes.lightTheme.textTheme.bodyMedium?.copyWith(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6.0),
                                            ),
                                            backgroundColor: MyThemes.lightTheme.primaryColorLight,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: ElevatedButton(onPressed: () {

                                        }, child: SvgPicture.asset("assets/images/cart-icon.svg",
                                          colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                                        ),
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6.0),
                                            ),
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                                    child: Divider(
                                      height: 0.5,
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),);
  }
}
