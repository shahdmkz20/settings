class RecordModel {
  final String personImageUrl;
  final String title;
  final String subtitle;
  final DateTime postDate;

  RecordModel(
      {required this.personImageUrl,
      required this.title,
      required this.subtitle,
      required this.postDate});
}

List<RecordModel> records = [
  RecordModel(
    personImageUrl:
        'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
    title: ':BBC اشرف محفوض بالاعجاب',
    subtitle: 'فريق كرة القدم سيء جدًا لماذا',
    postDate: DateTime(2024, 5, 20),
  ),
  RecordModel(
    personImageUrl:
        'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
    title: ':BBC اشرف محفوض بالاعجاب بمنشور',
    subtitle: 'فريق كرة القدم سيء جدًا لماذا',
    postDate: DateTime(2024, 6, 8),
  ),
  RecordModel(
      personImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      title: ':BBC اشرف محفوض بالاعجاب بمنشور',
      postDate: DateTime(2024, 6, 7),
      subtitle: 'فريق كرة القدم سيء جدًا لماذا'),
  RecordModel(
      personImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      title: ':BBC اشرف محفوض بالاعجاب بمنشور',
      postDate: DateTime(2024, 6, 7),
      subtitle: 'فريق كرة القدم سيء جدًا لماذا'),
  RecordModel(
      personImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      title: "",
      postDate: DateTime(2024, 6, 6),
      subtitle: 'فريق كرة القدم سيء جدًا لماذا'),
  RecordModel(
      personImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      title: "قام مهند بنشر منشور جديد ",
      postDate: DateTime(2024, 6, 5),
      subtitle: "لماذا بلا نبدأ بتعلم اساسيات الذكاء الصنعي"),
  RecordModel(
      personImageUrl:
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      title: "قام محمج هادي بالاعجاب",
      postDate: DateTime(2024, 6, 4),
      subtitle: "برمجة الويب بدأت بالانهيار"),
];

class RecordWithValue {
  RecordModel record;
  bool value;

  RecordWithValue(this.record, this.value);
}

List<RecordWithValue> recordsWithValue = [];
