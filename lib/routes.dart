import 'package:articles/view/screens/settings/settings_home_screen.dart';
import 'package:articles/view/screens/settings/settings_job_info.dart';
import 'package:articles/view/screens/settings/settings_jobs_screen.dart';
import 'package:articles/view/screens/settings/settings_saved_screen.dart';
import 'package:get/get.dart';

import 'core/constants/routes.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/",
      page: () =>
          const SettingsHomePage() //JobInformation() //, //middlewares: [MyMiddleWare()]
      ),
  GetPage(name: AppRoutes.settingsJobs, page: () => const SettingsJobsScreen()),
  GetPage(name: AppRoutes.jobInfo, page: () => const JobInformation()),
  GetPage(name: AppRoutes.saved, page: () => const SettingsSavedScreen()),
];
