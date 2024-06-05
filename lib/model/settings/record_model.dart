class RecordModel {
  final String personImageUrl;
  final String title;
  final String subtitle;

  RecordModel({
    required this.personImageUrl,
    required this.title,
    required this.subtitle,
  });
}

List<RecordModel> records = [
  RecordModel(
      personImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      title: ':BBC اشرف محفوض بالاعجاب بمنdkfjgjdkfgkjgdkشور',
      subtitle: 'فريق كرة القدم سيء جدًا لماذا'),
  RecordModel(
      personImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      title: ':BBC اشرف محفوض بالاعجاب بمنشور',
      subtitle: 'فريق كرة القدم سيء جدًا لماذا'),
  RecordModel(
      personImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      title: ':BBC اشرف محفوض بالاعجاب بمنشور',
      subtitle: 'فريق كرة القدم سيء جدًا لماذا'),
];

class RecordWithValue {
  RecordModel record;
  bool value;

  RecordWithValue(this.record, this.value);
}

List<RecordWithValue> recordsWithValue = [];
