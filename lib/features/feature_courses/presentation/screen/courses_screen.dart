
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/widgets/footer.dart';
import '../../../../config/my_theme.dart';
import '../../../../config/responsive.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CoursesScreen> {

  List<String> popularCoursesDataList = [
    "https://static.vecteezy.com/system/resources/thumbnails/009/763/252/small_2x/back-to-school-banner-design-with-colorful-funny-school-tool-vector.jpg",
    "https://www.shutterstock.com/shutterstock/photos/2198869609/display_1500/stock-vector-back-to-school-square-banner-school-supplies-stationery-icons-funny-colorful-organic-shapes-2198869609.jpg",
    "https://www.shutterstock.com/image-vector/back-school-banner-colorful-line-260nw-667072066.jpg",
    "https://static.vecteezy.com/system/resources/previews/002/202/511/non_2x/back-to-school-banner-collection-free-vector.jpg",
    "https://static.vecteezy.com/system/resources/thumbnails/009/763/252/small_2x/back-to-school-banner-design-with-colorful-funny-school-tool-vector.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Responsive(
        mobile: Container(),
        desktop: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      Image.network(popularCoursesDataList[index]),
                      Row(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/images/"),
                              Text(""),
                            ],
                          ),
                        ],
                      ),
                      Text("مشاوره خانواده",),
                      RichText(
                        text: TextSpan(
                          text: 'مدرس: ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'ثریا قاضی',
                                style: TextStyle(fontWeight: FontWeight.bold,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
