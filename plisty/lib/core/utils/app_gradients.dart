import 'package:flutter/material.dart';

import 'app_colors.dart';

Gradient? gradientButton = const LinearGradient(
    colors: [
      cPrimaryColor,
      cSecondaryColor,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.2, 0.9]);

Gradient? gradientCircle = const LinearGradient(
  colors: [
    cOtp1Color,
    // cSecondaryColor,
    cPrimaryColor,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [0.2, 0.9],
);

Gradient? otpGradient = const LinearGradient(
    colors: [
      cOtp1Color,
      Color(0xFF00F7FF),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2, 0.9]);
    
Gradient? bookingDateGradient = const LinearGradient(
    colors: [
      Color(0xFF00F7FF),
      cOtp1Color,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.2, 0.9]);
