import 'package:articles/view/screens/news/news_home_screen/news_home_screen.dart';
import 'package:articles/view/screens/settings/advertisment/settings_advertisment_screen.dart';
import 'package:articles/view/screens/settings/forget_password_screen/settings_forget_password_screen.dart';
import 'package:articles/view/screens/settings/home_screen/settings_home_screen.dart';

import 'package:articles/view/screens/settings/job_information_screen/settings_job_info.dart';
import 'package:articles/view/screens/settings/jobs_list_screen/settings_jobs_screen.dart';
import 'package:articles/view/screens/settings/news_screen/settings_news_screen.dart';
import 'package:articles/view/screens/settings/notifications_controller_screen/settings_notifications_controller_screen.dart';
import 'package:articles/view/screens/settings/notifications_screen/settings_notifications_screen.dart';
import 'package:articles/view/screens/settings/profile_information_screen/settings_profile_info_screen.dart';
import 'package:articles/view/screens/settings/profile_settings_screen/settings_profile_settings_screen.dart';
import 'package:articles/view/screens/settings/records_screen/settings_records_screen.dart';
import 'package:articles/view/screens/settings/saveds_screen/settings_saved_screen.dart';
import 'package:articles/view/screens/settings/text_size_screen/settings_text_size_screen.dart';
import 'package:articles/view/screens/settings/training_screen/settings_training_screen.dart';
import 'package:get/get.dart';

import 'core/constants/routes.dart';
import 'core/middleware/middleware.dart';
import 'view/screens/Auth/change_screen/changescreen.dart';
import 'view/screens/Auth/interst_screen/interstscreen.dart';
import 'view/screens/Auth/login_screen/loginscreen.dart';
import 'view/screens/Auth/register_screen/registerscreen.dart';
import 'view/screens/Auth/splash_screen/splashscreen.dart';
import 'view/screens/Auth/verify_screen/verifyscreen.dart';
import 'view/screens/home/home_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/",
      page: () => const SplashScreen(),
      middlewares: [MyMiddleWare()]),

//Auth
  GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
  GetPage(name: AppRoutes.login, page: () => const loginScreen()),
  GetPage(name: AppRoutes.register, page: () => const RegisterScreen()),
  GetPage(name: AppRoutes.change, page: () => const ChangeScreen()),
  GetPage(name: AppRoutes.verify, page: () => const VerifyScreen()),

//new
  GetPage(name: AppRoutes.news, page: () => const NewsHomeScreen()),

//intersets
  GetPage(name: AppRoutes.interst, page: () => const InterstsScreen()),

  //settings
  GetPage(name: AppRoutes.settings, page: () => const SettingsHomePage()),
  GetPage(name: AppRoutes.settingsJobs, page: () => const SettingsJobsScreen()),
  GetPage(name: AppRoutes.jobInfo, page: () => const JobInformation()),
  GetPage(name: AppRoutes.saved, page: () => const SettingsSavedScreen()),
  GetPage(name: AppRoutes.hobbies, page: () => const SettingsNewsScreen()),
  GetPage(name: AppRoutes.settingsNews, page: () => const SettingsNewsScreen()),
  GetPage(name: AppRoutes.records, page: () => const SettingsRecordsScreen()),
  GetPage(
      name: AppRoutes.advertisment,
      page: () => const SettingsAdvertismentScreen()),
  GetPage(name: AppRoutes.trainig, page: () => const SettingsTrainingScreen()),
  GetPage(
      name: AppRoutes.settingSettings,
      page: () => const SettingsProfileSettingsScreen()),
  GetPage(
      name: AppRoutes.profileInfo,
      page: () => const SettingsProfileInfoScreen()),
  GetPage(
      name: AppRoutes.forgetPassword,
      page: () => const SettingsForgetPassword()),
  GetPage(
      name: AppRoutes.notificationControls,
      page: () => const SettingsNotificationsControlsScreen()),
  GetPage(name: AppRoutes.textSize, page: () => const SettingsTextSizeScreen()),
  GetPage(
      name: AppRoutes.notifications,
      page: () => const SettingsNotificationsScreen()),

  //Home
  GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
];
