import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';

import '../../../../core/components/main_elevated_button.dart';

class ResendCodeButtonWidget extends StatefulWidget {
  const ResendCodeButtonWidget({
    super.key,
    required this.token,
    required this.controller,
  });

  final CountdownController controller;
  final String token;

  @override
  State<ResendCodeButtonWidget> createState() => _ResendCodeButtonWidgetState();
}

class _ResendCodeButtonWidgetState extends State<ResendCodeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return MainElevatedButton(
        enabled: (widget.controller.isCompleted ?? false),
        onPressed: (widget.controller.isCompleted ?? false)
            ? () {
                widget.controller.restart();
                widget.controller.isCompleted = false;
                setState(() {});
                // context
                //     .read<OtpCubit>()
                //     .resendOtp(context: context, token: widget.token);
              }
            : null,
        label: 'إرسال');
  }
}
