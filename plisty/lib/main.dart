import 'package:flutter/material.dart';
import 'package:plisty/plisty_app.dart';

import 'core/network/dio_helper/dio_helper.dart';
import 'core/services/service_locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
    await ServiceLocator().init();
  await DioHelper.init();
  runApp(const PlistyApp());
}


