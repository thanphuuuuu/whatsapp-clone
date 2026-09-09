String formatTime(DateTime time) {
  final now = DateTime.now();
  final diff = now.difference(time);

  if (diff.inDays == 0 && now.day == time.day) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  } else if (diff.inDays < 7) {
    const days = ['T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'CN'];
    return days[time.weekday - 1];
  } else {
    return '${time.day}/${time.month}';
  }
}
