class Person {
  int id;
  String name;
  String pictureUrl;
  String bio;
  String facebookUsername;
  String linkedInUsername;
  String email;
  String sex;
  String phoneNumber;
  DateTime birthdate;
  List<String> jobs;

  List<String> studies;
  List<String> placesLived;

  Person({
    required this.id,
    required this.name,
    required this.pictureUrl,
    required this.bio,
    required this.facebookUsername,
    required this.linkedInUsername,
    required this.email,
    required this.sex,
    required this.birthdate,
    required this.jobs,
    required this.phoneNumber,
    required this.studies,
    required this.placesLived,
  });
}

class ContactInfoModel {
  String facebookUsername;
  String linkedInUsername;
  String email;

  String phoneNumber;

  ContactInfoModel({
    required this.facebookUsername,
    required this.linkedInUsername,
    required this.email,
    required this.phoneNumber,
  });
}

class GeneralInfoModel {
  String sex;
  DateTime birthdate;

  GeneralInfoModel({
    required this.sex,
    required this.birthdate,
  });
}

class UserJobModel {
  List<String> jobs;
  UserJobModel({required this.jobs});
}

class UserStudiesModel {
  List<String> studies;
  UserStudiesModel({required this.studies});
}

Person person = Person(
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
