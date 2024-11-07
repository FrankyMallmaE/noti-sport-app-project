String timeAgo(DateTime date) {
  final difference = DateTime.now().difference(date);

  if (difference.inDays > 8) {
    return "${date.day}/${date.month}/${date.year}"; // Full date format if more than a week ago
  } else if (difference.inDays >= 1) {
    return "${difference.inDays} days ago";
  } else if (difference.inHours >= 1) {
    return "${difference.inHours} hours ago";
  } else if (difference.inMinutes >= 1) {
    return "${difference.inMinutes} minutes ago";
  } else {
    return "just now";
  }
}

