import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdsBannerBox extends StatefulWidget {
  final String img;
  final String title;
  final String subTitle;

  AdsBannerBox({
    required this.img,
    required this.title,
    required this.subTitle,
    super.key,
  });

  @override
  State<AdsBannerBox> createState() => _AdsBannerBoxState();
}

class _AdsBannerBoxState extends State<AdsBannerBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 3.0,
            spreadRadius: 3.0,
          )
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SvgPicture.asset(widget.img,
              width: 40,
              height: 40,
            ),
          ),
          Text(widget.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.subTitle,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
