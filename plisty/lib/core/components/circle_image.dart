import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({super.key, this.width, this.height, this.img, this.bgColor});
final double? width;
final double? height;
final String? img;
final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
          width: width?? 50.w,
          height: height?? 50.h,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color:bgColor,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
               img ?? 'https://s3-alpha-sig.figma.com/img/9c11/4d62/6f5c893a69ba0f309ba130f0ef7a6c22?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GZSxlSRwK8t0WQHSB8jj-LPk6dEmomfCa9ZgP249TxHvee9zjOvtjiUupwVtUm2KoojhWh7oj5MMIZ96pXynS8Tq28PS~ToJa0t2n-ogW6O0I0-rL35QOaMQ9r7oiuD6qgy9KAXnIhJsxg2x9F~6EwJ~CdzYyNBEi-s2aOkUpgvH9RHYPkXPDkTt9v77CS9Se5zfV9Dl0DfxSfOTdKf9yY4g3coU5RhPpRUr7GA1ZosHGSlnUWVacqfvVUw-PkeTsWAxoHqsNiLbicbbe5YFuKwwM93qHYCg1BPetO03YajB8XRxHyhw4umTqQuVkpjQXHS2-s846J8OWVuiaVPzJw__',
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
  }
}