class DateHelper {
  String getTimeAgo(DateTime dateTime) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(dateTime);

    if (difference.inSeconds < 60) {
      return 'just now';
    } else if (difference.inMinutes < 60) {
      int minutes = difference.inMinutes;
      return '${minutes} ${minutes == 1 ? 'minute ago' : 'minutes ago'}';
    } else if (difference.inHours < 24) {
      int hours = difference.inHours;
      return '${hours} ${hours == 1 ? 'hour ago' : 'hours ago'}';
    } else if (difference.inDays < 7) {
      int days = difference.inDays;
      return '${days} ${days == 1 ? 'day ago' : 'days ago'}';
    } else if (difference.inDays < 30) {
      int weeks = (difference.inDays / 7).floor();
      return '${weeks} ${weeks == 1 ? 'week ago' : 'weeks ago'}';
    } else {
      int months = (difference.inDays / 30).floor();
      return '${months} ${months == 1 ? 'month ago' : 'months ago'}';
    }
  }
}
