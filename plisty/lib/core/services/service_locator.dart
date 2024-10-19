import 'package:get_it/get_it.dart';

import '../../features/login/data/repo/otp_repo.dart';
import '../../features/login/data/repo/otp_repo_imp.dart';


final sl = GetIt.instance;

class ServiceLocator {
  Future<void> init() async {
    // await _initSharedPref();

    // sl.registerLazySingleton<LoginRepo>(
    //   () => LoginRepoImp(),
    // );

    sl.registerLazySingleton<OtpRepo>(
      () => OtpRepoImp(),
    );
  }

  // Future<void> _initSharedPref() async {
  //   SharedPreferences sharedPref = await SharedPreferences.getInstance();
  //   sl.registerSingleton<SharedPreferences>(sharedPref);
  // }
}
