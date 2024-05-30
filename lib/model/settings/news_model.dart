class News {
  final int newsId;
  final int newsCategory;
  final String newsTitle;
  final String subtitle;
  final DateTime newsPublishDate;
  final String newsImageUrl;
  final String newsInfo;
  final String source;

  News(
      {required this.newsId,
      required this.newsCategory,
      required this.newsTitle,
      required this.subtitle,
      required this.newsPublishDate,
      required this.newsImageUrl,
      required this.newsInfo,
      required this.source});
}

List<News> news = [
  News(
      newsId: 1,
      newsCategory: 1,
      newsTitle: 'كورونا',
      subtitle: 'ماذا تعرف عن كورونا',
      newsPublishDate: DateTime.now(),
      newsImageUrl:
          'https://www.un.org/sites/un2.un.org/files/field/image/1583952355.1997.jpg',
      newsInfo:
          'عادت المخاوف العالمية من ظهور تطورات جديدة لكورونا يعد أن انتهى العالم من التعافي من آثاره التي استمرت لأكثر من عامين.'
          ' في أميركا تم تسجيل إصابة 23 مليون شخص بما يعرف بكوفيد طويل الأمد والذي أصبح يهدد حياة الملايين حول العالم، بدون وجود سبب محدد لظهوره أو اكتشاف طريق لعلاجه.',
      source: 'CNN بالعري'),
  News(
      newsId: 4,
      newsCategory: 1,
      newsTitle: 'اللياقة البدنية والصحة العامة',
      subtitle: 'نصائح للحفاظ على صحتك',
      newsPublishDate: DateTime.now(),
      source: 'CNN بالعري',
      newsImageUrl:
          'https://modo3.com/thumbs/fit630x300/82418/1667132858/%D9%85%D9%88%D8%B6%D9%88%D8%B9_%D8%AA%D8%B9%D8%A8%D9%8A%D8%B1_%D8%B9%D9%86_%D8%A7%D9%84%D8%B5%D8%AD%D8%A9.jpg',
      newsInfo:
          'يقدم خبراء اللياقة البدنية نصائح مفيدة للمحافظة على صحة جسمك وتحسين مستوى اللياقة البدنية العامة.'),
  News(
      newsId: 5,
      newsCategory: 2,
      newsTitle: 'تأثير وسائل الإعلام في المجتمع',
      subtitle: 'دراسة جديدة تكشف تأثير وسائل الإعلام على السلوك الإنساني',
      newsPublishDate: DateTime.now(),
      source: 'CNN بالعري',
      newsImageUrl: 'https://asbar.com/site/wp-content/uploads/2021/11/760.jpg',
      newsInfo:
          'تشير الدراسات الحديثة إلى أن وسائل الإعلام لها تأثير كبير على السلوك الإنساني والمجتمع بشكل عام، ويتم تحليل هذا التأثير في دراسة جديدة.'),
  News(
      newsId: 6,
      newsCategory: 3,
      newsTitle: 'استكشاف الأماكن السياحية الجديدة',
      subtitle: 'أفضل الوجهات السياحية لهذا العام',
      newsPublishDate: DateTime.now(),
      source: 'CNN بالعري',
      newsImageUrl:
          'https://www.edarabia.com/ar/wp-content/uploads/2020/05/what-importance-tourism-4-important-aspects-make-most-important-sector-economy.jpg',
      newsInfo:
          'تقدم العديد من الوجهات السياحية في العالم تجارب فريدة ومثيرة للزوار، وتستعرض هذه الأماكن الجمال الطبيعي والثقافة المحلية.'),
  News(
      newsId: 7,
      newsCategory: 4,
      newsTitle: 'أحدث استراتيجيات التسويق الرقمي',
      subtitle: 'كيفية تحسين استراتيجيات التسويق لشركتك',
      newsPublishDate: DateTime.now(),
      source: 'CNN بالعري',
      newsImageUrl:
          'https://emeritus.org/in/wp-content/uploads/sites/3/2022/11/IIMK-ASMP-1024x576.jpg.optimal.jpg',
      newsInfo:
          'يقدم خبراء التسويق الرقمي استراتيجيات مبتكرة لتحسين أداء الشركات في سوق التنافس الشديد.'),
  News(
      newsId: 8,
      newsCategory: 5,
      newsTitle: 'آخر أخبار الرياضة العالمية',
      subtitle: 'تغطية مفصلة لأهم الأحداث الرياضية',
      newsPublishDate: DateTime.now(),
      source: 'CNN بالعري',
      newsImageUrl:
          'https://media.gq.com/photos/5e617030ff27ea000836ecbf/16:9/w_2560%2Cc_limit/story-JoeHolder_Winter_Low-2164.jpg',
      newsInfo:
          'يتم تغطية جميع الأحداث الرياضية الهامة في مختلف الرياضات بشكل مفصل وشامل.'),
  News(
      newsId: 9,
      newsCategory: 6,
      newsTitle: 'أحدث صيحات الموضة والأزياء',
      subtitle: 'تسوق أحدث مجموعات الموضة لهذا الموسم',
      newsPublishDate: DateTime.now(),
      source: 'CNN بالعري',
      newsImageUrl:
          'https://assets.annahar.com/ContentFilesArchive/210039Image1-1180x677_d.jpg?version=1290065',
      newsInfo:
          'تقدم أشهر دور الأزياء في العالم أحدث صيحات الموضة والأزياء لموسم الربيع والصيف.'),
  News(
      newsId: 10,
      newsCategory: 1,
      newsTitle: 'التوعية بأهمية اللياقة البدنية',
      subtitle: 'التأثير الإيجابي لممارسة الرياضة على الصحة',
      newsPublishDate: DateTime.now(),
      source: 'CNN بالعري',
      newsImageUrl:
          'https://modo3.com/thumbs/fit630x300/82418/1667132858/%D9%85%D9%88%D8%B6%D9%88%D8%B9_%D8%AA%D8%B9%D8%A8%D9%8A%D8%B1_%D8%B9%D9%86_%D8%A7%D9%84%D8%B5%D8%AD%D8%A9.jpg',
      newsInfo:
          'تسلط الضوء على فوائد ممارسة الرياضة واللياقة البدنية للجسم والعقل والنفس.'),
  News(
      newsId: 11,
      newsCategory: 2,
      newsTitle: 'أثر وسائل الإعلام على الثقافة الشعبية',
      subtitle: 'تحليل لدور وسائل الإعلام في تشكيل الثقافة',
      newsPublishDate: DateTime.now(),
      source: 'CNN بالعري',
      newsImageUrl: 'https://asbar.com/site/wp-content/uploads/2021/11/760.jpg',
      newsInfo:
          'دراسة عميقة تكشف عن كيفية تأثير وسائل الإعلام في تشكيل القيم والمعتقدات في المجتمع.'),
  News(
      newsId: 12,
      newsCategory: 3,
      newsTitle: 'استكشاف أماكن سياحية غير تقليدية',
      subtitle: 'اكتشاف وجهات سياحية غير معروفة',
      newsPublishDate: DateTime.now(),
      source: 'CNN بالعري',
      newsImageUrl:
          'https://www.edarabia.com/ar/wp-content/uploads/2020/05/what-importance-tourism-4-important-aspects-make-most-important-sector-economy.jpg',
      newsInfo:
          'يستكشف المسافرون الأماكن السياحية المختلفة لتجربة ثقافات جديدة وتجارب فريدة.'),
  News(
      newsId: 13,
      newsCategory: 4,
      newsTitle: 'تطورات في استراتيجيات التسويق الرقمي',
      subtitle: 'آخر الابتكارات في مجال التسويق الرقمي',
      newsPublishDate: DateTime.timestamp(),
      source: 'CNN بالعري',
      newsImageUrl:
          'https://emeritus.org/in/wp-content/uploads/sites/3/2022/11/IIMK-ASMP-1024x576.jpg.optimal.jpg',
      newsInfo:
          'يتم تقديم تحليل شامل لأحدث التطورات في مجال التسويق الرقمي وكيفية تطبيقها بشكل فعال في الشركات.'),
];
