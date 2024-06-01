import 'package:articles/model/settings/training_model.dart';
import 'package:get/get.dart';

abstract class SettingsTrainingControllerABS extends GetxController {
  late TrainingModel trainingModel;
}

class SettingsTrainingController extends SettingsTrainingControllerABS {
  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() {
    trainingModel = Get.arguments['trainingModel'];
  }
}
