import 'package:articles/core/constants/routes.dart';
import 'package:get/get.dart';

import '../../data/static/static.dart';
import '../../model/settings/jobs_model.dart';
import '../../model/settings/person_model.dart';
import '../../model/settings/settings_sections.dart';

abstract class SettingsControllerABS extends GetxController {
  late List<SettingsSectionModel> settingsSection;
  late Person person;
  late List<String> listType = [];
  goToPage(int index);
  goToJob(JobModel job);
}

class SettingsController extends SettingsControllerABS {
  //settings sections part
  @override
  List<SettingsSectionModel> get settingsSection => settingsSections;
  @override
  Person get person => persons;
  @override
  goToPage(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.settingsJobs);
        break;
      case 1:
        Get.toNamed(AppRoutes.saved);
        break;
    }
  }

  //drowdownMenu
  String selectedJobWorkTimeVal = "";
  String selectedJobFieldVal = "";
  String selectedJobTypeVal = "";
  int? selectedJobField;
  int? selectedJobType;
  int? selectedJobWorkTime;
  onChanged(val, int index) {
    switch (index) {
      case 0:
        selectedJobTypeVal = val!;
        selectedJobType = jobsType.indexOf(val);
        break;
      case 1:
        selectedJobWorkTimeVal = val!;
        selectedJobWorkTime = jobWorkTime.indexOf(val);
        break;
      case 2:
        selectedJobFieldVal = val!;
        selectedJobField = jobField.indexOf(val);
        break;
    }
    filteredJobList =
        filterJobs(selectedJobType, selectedJobWorkTime, selectedJobField);
    update();
  }

  //jobs list
  late String selectedJobID;
  List<JobModel> filteredJobList = jobList;
  List<JobModel> filterJobs(int? jobType, int? jobTime, int? jobField) {
    filteredJobList = jobList;
    return jobList.where((job) {
      bool matchJobType = jobType == null || job.jobType == jobType;
      bool matchJobTime = jobTime == null || job.workTime == jobTime;
      bool matchJobField = jobField == null || job.field == jobField;
      return matchJobType && matchJobTime && matchJobField;
    }).toList();
  }

  @override
  goToJob(JobModel job) {
    Get.toNamed(AppRoutes.jobInfo, arguments: {
      'jobModel': job,
    });
  }
}
