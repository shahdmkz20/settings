import 'package:articles/model/settings/jobs_model.dart';
import 'package:get/get.dart';

abstract class SettingsJobsControllerABS extends GetxController {
  late JobModel job;
}

class SettingsJobsController extends SettingsJobsControllerABS {
  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() {
    job = Get.arguments['jobModel'];
  }
}
