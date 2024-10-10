part of '../extensions.dart';

extension IterableExtensions<T> on Iterable<T> {
  @Deprecated('Use https://pub.dev/packages/collection instead')
  Iterable<MapEntry<U, Iterable<T>>> groupBy<U>(
    U Function(T) keySelector,
  ) sync* {
    final map = <U, List<T>>{};
    for (final element in this) {
      final key = keySelector(element);
      if (!map.containsKey(key)) {
        map[key] = <T>[];
      }
      map[key]!.add(element);
    }

    yield* map.entries;
  }
}
