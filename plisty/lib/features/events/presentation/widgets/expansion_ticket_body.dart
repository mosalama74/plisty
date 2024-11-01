import 'package:flutter/material.dart';
import 'package:plisty/core/utils/text_styles.dart';

import '../../../../core/utils/app_gradients.dart';
import '../../../../core/utils/app_strings.dart';

class ExpansionTicketBody extends StatelessWidget {
  const ExpansionTicketBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:BoxDecoration(
        gradient: gradientButton,
      ),
      child: Text(AppStrings.expansionTicketInfo,style: ts14White400,maxLines: 7,),
    );
  }
}