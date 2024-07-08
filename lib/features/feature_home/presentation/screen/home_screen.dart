
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/widgets/footer.dart';
import '../../../../config/my_theme.dart';
import '../../../../config/responsive.dart';
import '../widgets/ads_banner_box.dart';
import '../widgets/horizontal_flat_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: Container(
            child: Text("Mobile"),
          ),
          tablet: Container(
            child: Text("Tablet"),
          ),
          desktop: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // padding: const EdgeInsets.all(25.0),
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: MyThemes.lightTheme.primaryColor,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 3.0,
                        spreadRadius: 3.0,
                      )
                    ],
                  ),
                  child: SvgPicture.asset("assets/images/banner.svg"),
                ),
                const SizedBox(height: 20.0),
                HorizontalFlatList(),
                const SizedBox(height: 30.0),
                GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 40.0,
                  childAspectRatio: 18/9,
                  children: [
                    AdsBannerBox(img: "assets/images/certificate-icon.svg", title: "لوح ها و دستاوردها", subTitle: "مجموعه ای متشکل از تقدیرنامه ها و افتخارات در جشنواره های علمی و پژوهشی بین المللی",),
                    AdsBannerBox(img: "assets/images/target-line-icon.svg", title: "اهداف و دیدگاه ها", subTitle: "مجموعه ای متشکل از تقدیرنامه ها و افتخارات در جشنواره های علمی و پژوهشی بین المللی",),
                    AdsBannerBox(img: "assets/images/members-icon.svg", title: "اعضا و کاربران", subTitle: "مجموعه ای متشکل از تقدیرنامه ها و افتخارات در جشنواره های علمی و پژوهشی بین المللی",),
                  ],
                ),
                const SizedBox(height: 30.0),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
