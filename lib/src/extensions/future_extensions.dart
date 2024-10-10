part of '../extensions.dart';

extension FutureExtension<T> on Future<T> {
  @Deprecated('Use https://pub.dev/packages/easy_future_builder instead')
  FutureBuilder<T> thenBuild(
    Widget Function(BuildContext context, T result) builder, {
    Widget Function(BuildContext context)? onLoading,
    Widget Function(
      BuildContext context, [
      Object? error,
      StackTrace? stackTrace,
    ])? onError,
    Key? key,
    bool eagerLoadingState = false,
  }) {
    return FutureBuilder(
      key: key,
      future: this,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return onError?.call(context, snapshot.error, snapshot.stackTrace) ??
              const SizedBox.shrink();
        }

        if (eagerLoadingState &&
            snapshot.connectionState == ConnectionState.waiting) {
          return onLoading?.call(context) ?? const SizedBox.shrink();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return builder(context, snapshot.data as T);
        }

        return onLoading?.call(context) ?? const SizedBox.shrink();
      },
    );
  }
}
