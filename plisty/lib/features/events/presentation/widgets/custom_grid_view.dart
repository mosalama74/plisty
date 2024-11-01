import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.crossAxisCount,
    required this.childAspectRatio,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,  
    required this.itemBuilder,  
    required this.itemCount,  
    required this.scrollDirection,  
     this.mainAxisExtent,
  });

  final int? itemCount;
  final int crossAxisCount;
  final double childAspectRatio;
  final double crossAxisSpacing;
  final double? mainAxisExtent;
  final double mainAxisSpacing;
  final Widget? Function(BuildContext, int) itemBuilder;
  final Axis scrollDirection;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection:scrollDirection ,
      
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio:  childAspectRatio , 
        crossAxisSpacing:  crossAxisSpacing,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: mainAxisSpacing, 
      ),
      itemBuilder: itemBuilder,
    );
  }
}
