import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plisty/core/utils/app_colors.dart';
import 'package:plisty/features/home/presentation/widgets/search_tff_icon_btn.dart';

import '../widgets/app_bar_title.dart';
import '../widgets/custom_carousel_slider.dart';
import '../widgets/filter_list.dart';
import '../widgets/nearby_events.dart';
import '../widgets/plisty_life.dart';
import '../widgets/special_events.dart';
import '../widgets/upcoming_events.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: cPrimaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            children: [
              const SearchTffIconBtn(prefixIcon: Icon(Icons.search,color: cDarkWhite2Color,),),
              SizedBox(
                height: 16.h,
              ),
              const FilterList(),
              SizedBox(
                height: 16.h,
              ),
              const CustomCarouselSlider(
                img:
                    'https://s3-alpha-sig.figma.com/img/940b/46d3/3a8ed56d1ea5ecad7e743cb0b5c7ff88?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jYzt27V-agAPBx25SmIYkJVUsr4nUsBrotVBUYqXFwfT69sEjxnq0gRGzXLMEYPpZhAnn5xkCDM4wbTAbc~y3FSYACzsMXpmmWZzHgpQw-KWPHqWnuHpqHlujPs6BMw3GhM7mBDOiefDiNpPE638pI7u9ZTTMfHTD~0ih3JTVnPefwtKyvyLmWBgof-8Di~7grj65xAVr8uv~BQPYuYTltryWWltWAdkNI6yxuN~LVgZM1Bs8Yn1Lq6oyjVgMnlWCRc3vqux9TVXHlsJ1cS2CICJoP-I3GmP5uHfWpwP6x6WQ8R4KlLEwibiKgKXrRo-pYS9Q5xbOQ~rhE0CgeEgrA__',
              ),
              SizedBox(
                height: 16.h,
              ),
              const NearbyEvents(),
              SizedBox(
                height: 16.h,
              ),
              const SpecialEvents(),
              SizedBox(
                height: 16.h,
              ),
              const UpcomingEvents(),
               SizedBox(
                height: 16.h,
              ),
              const PlistyLife(),
            ],
          ),
        ),
      ),
    );
  }
}
