part of ricardos.extensions;

extension NumExtensions on num {
  /// Returns a string representation of this number with a sign:
  /// - If the number is zero, the sign is omitted.
  /// - If the number is negative, the sign is '-'.
  /// - If the number is positive, the sign is '+'.
  String toStringAsSigned(int fractionDigits) {
    final displayValue =
        (this * (fractionDigits * 10.0)).round() / (fractionDigits * 10.0);

    final String sign;
    if (displayValue == 0) {
      sign = '';
    } else if (displayValue < 0) {
      sign = '-';
    } else {
      sign = '+';
    }

    return '$sign${abs().toStringAsFixed(fractionDigits)}';
  }

  /// Returns a string representation of this number as a file size.
  /// The number is converted to the largest unit that results in a value
  /// greater than or equal to 1.
  /// For example, `1024` is converted to a tuple `(1.0, 'kB')`.
  (double value, String unit) toFileSize() {
    const decimalBase = 1000;
    const units = ['B', 'kB', 'MB', 'GB', 'TB'];

    if (this <= 0) return (0, 'B');

    final digitGroups = logBase(decimalBase).clamp(0, units.length - 1).floor();
    final value = this / pow(decimalBase, digitGroups);

    if (value == 0) return (0, 'B');

    final unit = units[digitGroups];

    return (value, unit);
  }

  /// Returns the logarithm of this number in the specified [base].
  double logBase(num base) => log(this) / log(base);

  /// Returns this number rounded to the specified [fractionDigits].
  double roundToFixed(int fractionDigits) {
    return (this * pow(10.0, fractionDigits)).round() /
        pow(10.0, fractionDigits);
  }
}
