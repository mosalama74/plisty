import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../widgets/custom_grid_view.dart';
import '../widgets/event_item.dart';
import '../widgets/search_field.dart';
import '../../../home/presentation/widgets/app_bar_title.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Scaffold(
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
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
          child: Column(
            children: [
              const SearchField(
                hintText: 'البحث',
                suffixIcon: Icons.search,
              ),
              SizedBox(
                height: 16.h,
              ),
              Expanded(
                child: CustomGridView(
                itemBuilder: (_, __) => const EventItem(),
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 16.h,
                childAspectRatio: 1,
                itemCount: 10,
                           ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
