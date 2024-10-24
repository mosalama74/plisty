import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';


class ItemHeaderWidget extends StatelessWidget {
  const ItemHeaderWidget({
    super.key,
     this.prefixtext,
     this.suffixtext,
    this.onPressed,
  });
  final String? prefixtext;
  final String? suffixtext;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            prefixtext??'',
            style: ts14Black600.copyWith(color: cDarkWhite2Color),
            maxLines: 1,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              suffixtext??'',
              style: ts14Black600.copyWith(
                  fontWeight: FontWeight.w400, color: cPrimaryColor),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
