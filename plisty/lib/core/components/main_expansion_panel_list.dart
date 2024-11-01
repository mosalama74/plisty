import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_gradients.dart';

class MainExpansionPanelList extends StatefulWidget {
  const MainExpansionPanelList(
      {super.key, required this.headerWidget, required this.expandedWidget, this.isTicket, this.expandIconColor, this.canTapOnHeader});
  final Widget headerWidget;
  final Widget expandedWidget;
  final bool? isTicket;
  final Color? expandIconColor;
  final bool? canTapOnHeader;


  @override
  State<MainExpansionPanelList> createState() => _MainExpansionPanelListState();
}

class _MainExpansionPanelListState extends State<MainExpansionPanelList> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        gradient: gradientButton,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: _buildPanel(),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
        expandIconColor:widget.expandIconColor?? cWhiteColor,
        elevation: 0,
        expandedHeaderPadding: EdgeInsets.zero,

        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _isExpanded = isExpanded;
          });
        },
        children: [
          ExpansionPanel(
            canTapOnHeader:widget.canTapOnHeader ??false,
            backgroundColor:(widget.isTicket == true && _isExpanded)? Colors.transparent : cDarkGreyColor,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return widget.headerWidget;
            },
            body:widget.expandedWidget,
            isExpanded: _isExpanded,
          ),
        ]);
  }
}
