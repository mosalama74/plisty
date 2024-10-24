import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    required this.img,
    this.autoPlay,
    this.enableInfiniteScroll,
    this.viewportFraction, this.aspectRatio,
  });
  final String img;
  final bool? autoPlay;
  final bool? enableInfiniteScroll;
  final double? viewportFraction;
  final double? aspectRatio;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 164.h,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: const BoxDecoration(
        borderRadius: BorderRadiusDirectional.all(
          Radius.circular(15),
        ),
      ),
      child: CarouselSlider(
        items: [
          Image.network(
            img,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
        ],
        options: CarouselOptions(
          aspectRatio: aspectRatio ?? 16/9,
          
          initialPage: 0,
          enableInfiniteScroll: enableInfiniteScroll ?? true,
          reverse: false,
          autoPlay: autoPlay ?? true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
          viewportFraction:viewportFraction ??1,
        ),
      ),
    );
  }
}
