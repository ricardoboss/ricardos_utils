## 2.0.1

- Updated `README.md`

## 2.0.0

- Removed `IterableExtensions.groupBy` as it was deprecated in 1.0.5
- Removed `FutureExtensions.thenBuild` as it was deprecated in 1.0.5

## 1.0.5

- Marked `IterableExtensions.groupBy` as deprecated; you should use https://pub.dev/documentation/collection/latest/collection/groupBy.html instead
- Marked `FutureExtensions.thenBuild` as deprecated; you should use https://pub.dev/packages/easy_future_builder instead

## 1.0.4

- Added `NumExtensions`:
  - `toStringAsSigned`: Converts a number to a string with a sign
  - `toFileSize`: Scales a number to a human-readable file size and returns a tuple with the scaled value and the unit
  - `logBase`: Returns the logarithm of the number with a specified base
  - `roundToFixed`: Rounds the number to a fixed number of decimal places

## 1.0.3

- Fixed an issue with `Future<T>.thenBuild` for cases when `T` is nullable

## 1.0.2

- Reorganized exports and libraries

## 1.0.1

- Added `ClickToCopyText` widget

## 1.0.0

- Initial release 🎉
- Added `DateTimeExtensions`
- Added `FutureExtensions`
- Added `IterableExtensions`
- Added `TargetPlatformExtensions`
