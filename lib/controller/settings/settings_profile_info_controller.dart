import 'package:get/get.dart';
import '../../model/settings/person_model.dart';

abstract class SettingsProfileInfoControllerABS extends GetxController {
  late Person person = Person(
    id: 1234,
    name: "أشرف مخفوض",
    pictureUrl:
        "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
    bio: "There are to many things still to say",
    facebookUsername: "john.doe",
    linkedInUsername: "john_doe",
    email: "john.doe@example.com",
    sex: "Male",
    birthdate: DateTime(1990, 5, 15),
    jobs: [
      "Software Engineer",
      "Mobile App Developer"
    ], // want to extract this data into a list
    phoneNumber: "123-456-7890",
    studies: ["Bachelor of Science in Computer Science"],
    placesLived: ["New York, NY", "San Francisco, CA"],
  );

  late List<String> personContactInfo;
  late List<String> personGeneralInfo;
  late List<String> personJobs;
  late List<String> personStudies;
  late List<String> personPlaces;

  getModelsData();
}

class SettingsProfileInfoController extends SettingsProfileInfoControllerABS {
  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() {
    person = Get.arguments['person'];

    getModelsData();
  }

  @override
  getModelsData() {
    personContactInfo = [
      person.phoneNumber,
      person.facebookUsername,
      person.linkedInUsername,
      person.email,
    ];

    personGeneralInfo = [
      person.sex,
      "${person.birthdate}",
    ];
    personPlaces = person.placesLived;

    personJobs = person.jobs;
    personStudies = person.studies;
    update();
  }
}
