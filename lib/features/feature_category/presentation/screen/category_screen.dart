
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/widgets/footer.dart';
import '../../../../config/my_theme.dart';
import '../../../../config/responsive.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  List<String> popularCoursesDataList = [
    "https://static.vecteezy.com/system/resources/thumbnails/009/763/252/small_2x/back-to-school-banner-design-with-colorful-funny-school-tool-vector.jpg",
    "https://www.shutterstock.com/shutterstock/photos/2198869609/display_1500/stock-vector-back-to-school-square-banner-school-supplies-stationery-icons-funny-colorful-organic-shapes-2198869609.jpg",
    "https://www.shutterstock.com/image-vector/back-school-banner-colorful-line-260nw-667072066.jpg",
    "https://static.vecteezy.com/system/resources/previews/002/202/511/non_2x/back-to-school-banner-collection-free-vector.jpg",
    "https://static.vecteezy.com/system/resources/thumbnails/009/763/252/small_2x/back-to-school-banner-design-with-colorful-funny-school-tool-vector.jpg",
  ];

  @override
  Widget build(BuildContext context) {

    final currentCount = ((MediaQuery.of(context).size.width - 300) ~/ 250).toInt();
    const minCount = 4;

    return SafeArea(child: Scaffold(
      body: Responsive(
        mobile: Container(),
        desktop: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: max(currentCount, minCount),childAspectRatio: 9/16, mainAxisSpacing: 60, crossAxisSpacing: 20,),
          itemCount: 5,
          itemBuilder: (context, index) => Container(
            color: Colors.amberAccent,
          child: Column(
            children: [
              Image.network(popularCoursesDataList[index],fit: BoxFit.cover,width: double.infinity, height: 200,),
              Row(
                children: [
                  Text("مشاوره خانواده",style: TextStyle(fontWeight: FontWeight.w600),),
                ],
              ),
              RichText(
                text: TextSpan(
                text: '',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: 'تهتهخ بیهثهی لتلهقتله بثهبثه یثهیثصه ثصیقهث ملذ خقنقفن قثخث ثقخثقث ثنقث سقفشیقفس هحمهنعح سیلس نعهعجحن صفثیقبص همکهعجح شسفیبق',
                      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11, color: Colors.grey,),),
                  TextSpan(text: ' world!'),
                ],
              ),
              ),
              Text(
                "",style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),),
      ),
    ),
    );
  }
}
