class NotificationModel {
  final int notificationId;
  final DateTime notificationDate;
  final String notificationImageUrl;
  final String notificationTitle;

  NotificationModel(
    this.notificationId,
    this.notificationDate,
    this.notificationImageUrl,
    this.notificationTitle,
  );
}

List<NotificationModel> notiList = [
  NotificationModel(
      1,
      DateTime(2024, 5, 20),
      'https://internationalbanker.com/wp-content/uploads/2021/09/Digital-Euro.png',
      'اليورو يضرب من جديد'),
  NotificationModel(
      2,
      DateTime(2024, 6, 4, 8, 4),
      'https://contenthub-static.grammarly.com/blog/wp-content/uploads/2019/08/August-blog-header-Amplification-437x233.png',
      'تم نشر مقالة جديدة من قبل Alaa darwish'),
  NotificationModel(
      3,
      DateTime(2024, 6, 4, 19, 52),
      'https://media.licdn.com/dms/image/C4E0BAQGXJa6-CT2FLw/company-logo_200_200/0/1630643354754/focal_x_agency_logo?e=2147483647&v=beta&t=hNC05HBwCKUwoHR01LpXI56ArhpDu2N6NtHf-KJfm-M',
      'فرصة عمل بشركة فوكال أكس : Back-end'),
  NotificationModel(
      4,
      DateTime(2024, 6, 3, 14, 15),
      'https://dynamic.brandcrowd.com/asset/logo/937e0eec-eebf-4294-9029-41619d6c3786/logo-search-grid-1x?logoTemplateVersion=1&v=638369310055500000',
      'تم تحديث سلسلة بودكاست الجرافيك ديزاين '),
  NotificationModel(
      5,
      DateTime(2024, 6, 3, 12, 20),
      'https://www.rev.com/blog/wp-content/uploads/2019/11/radio-broadcast-media-transcription-services.jpg',
      'تم نشر مقالة جديدة'),
  NotificationModel(
      6,
      DateTime(2024, 6, 4, 15, 45),
      'https://miro.medium.com/v2/resize:fit:1200/1*V-Jp13LvtVc2IiY2fp4qYw.jpeg',
      'اتجاهات تطوير الواجهة الخلفية والويب 2024'),
];
