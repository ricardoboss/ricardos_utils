part of ricardos.extensions;

extension DateTimeExtensions on DateTime {
  String toDateTimeString() {
    final date = toDateString();
    final time =
        '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';

    return '$date $time';
  }

  String toDateString() {
    return toIso8601String().split('T').first.split('-').reversed.join('.');
  }
}
