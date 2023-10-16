import 'package:get/get.dart';
import 'package:commission_station/app/data/local/preference/preference_manager.dart';
import 'package:commission_station/app/data/local/preference/preference_manger_impl.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreferenceManager>(
      () => PreferenceManagerImpl(),
      tag: (PreferenceManager).toString(),
      fenix: true,
    );
  }
}
