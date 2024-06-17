import 'package:articles/core/constants/routes.dart';
import 'package:articles/data/static/static.dart';
import 'package:get/get.dart';

import '../../../../../model/settings/training_model.dart';

abstract class SettingsAdvertismentControllerABS extends GetxController {
  late String selectedVal;
  late List<String> dropDownMenuItems;
  late List<TrainingModel> trainings;
  late List<TrainingModel> filteredList;
  onChanged(val);
  goToTraining(TrainingModel trainingModel);
}

class SettingsAdvertismentController extends SettingsAdvertismentControllerABS {
  @override
  List<String> get dropDownMenuItems => super.dropDownMenuItems = advList;
  @override
  void onInit() {
    selectedVal = "";
    filteredList = trainingsList;
    super.onInit();
  }

  @override
  List<TrainingModel> get trainings => super.trainings = trainingsList;
  @override
  onChanged(val) {
    selectedVal = val;
    filteredList = filterList(dropDownMenuItems.indexOf(val));
    update();
  }

  List<TrainingModel> filterList(int? selectedField) {
    return trainingsList.where((trainingModel) {
      return trainingModel.field == selectedField;
    }).toList();
  }

  @override
  goToTraining(trainingModel) {
    Get.toNamed(AppRoutes.trainig, arguments: {'trainingModel': trainingModel});
  }
}
