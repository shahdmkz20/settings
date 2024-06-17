import 'package:get/get.dart';

import '../../../../../core/constants/routes.dart';
import '../../../../../data/static/static.dart';
import '../../../../../model/settings/jobs_model.dart';

class SettingsJobsListController extends GetxController {
  late List<String> listType = [];
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

  goToJob(JobModel job) {
    Get.toNamed(AppRoutes.jobInfo, arguments: {
      'jobModel': job,
    });
  }
}
