import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/my_theme.dart';

class HorizontalFlatList extends StatefulWidget {
  const HorizontalFlatList({super.key});

  @override
  State<HorizontalFlatList> createState() => _HorizontalFlatListState();
}

class _HorizontalFlatListState extends State<HorizontalFlatList> {

  List<String> popularCoursesDataList = [
    "https://static.vecteezy.com/system/resources/thumbnails/009/763/252/small_2x/back-to-school-banner-design-with-colorful-funny-school-tool-vector.jpg",
    "https://www.shutterstock.com/shutterstock/photos/2198869609/display_1500/stock-vector-back-to-school-square-banner-school-supplies-stationery-icons-funny-colorful-organic-shapes-2198869609.jpg",
    "https://www.shutterstock.com/image-vector/back-school-banner-colorful-line-260nw-667072066.jpg",
    "https://static.vecteezy.com/system/resources/previews/002/202/511/non_2x/back-to-school-banner-collection-free-vector.jpg",
    "https://static.vecteezy.com/system/resources/thumbnails/009/763/252/small_2x/back-to-school-banner-design-with-colorful-funny-school-tool-vector.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("محبوب ترین دوره ها",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            ),
          ],
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                width: 400.0,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 3.0,
                      spreadRadius: 3.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Image.network(
                        popularCoursesDataList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("آموزش خود مراقبتی فرزندان در محیط مدرسه",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 13
                            ),
                          ),
                          Text("آموزش توسط دکتر ثریا قاضی در ۲۵ جلسه",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 10
                            ),
                          ),
                          SizedBox(
                            width: 260,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.5,
                                      color: const Color(0xFFFF8C54),
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Container(
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFFF8C54),
                                                borderRadius: BorderRadius.circular(6.0)
                                            ),
                                            child: Text("۲۶", style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                            ),)
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: SvgPicture.asset("assets/images/heart-icon-outline.svg",
                                          width: 17.0,
                                          height: 17.0,
                                          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    //TODO: go to detail btn Func
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: MyThemes.lightTheme.primaryColorLight,
                                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  child: Text("مشاهده جزییات",style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),),),
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
        ),
      ],
    );
  }
}
