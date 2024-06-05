String timeDifferenceFromNow(DateTime inputDateTime) {
  final now = DateTime.now();
  final difference = now.difference(inputDateTime);

  if (difference.inMinutes < 60) {
    return '${difference.inMinutes} دقيقة';
  } else if (difference.inHours <= 24) {
    return '${difference.inHours} ساعة';
  } else {
    return '${difference.inDays} يوم';
  }
}
