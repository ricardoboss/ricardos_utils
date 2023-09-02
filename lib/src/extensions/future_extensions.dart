part of ricardos.extensions;

extension FutureExtension<T> on Future<T> {
  FutureBuilder<T> thenBuild(
    Widget Function(BuildContext context, T result) builder, {
    Widget Function(BuildContext context)? onLoading,
    Widget Function(
            BuildContext context, Object? error, StackTrace? stackTrace)?
        onError,
    Key? key,
    bool eagerLoadingState = false,
  }) {
    return FutureBuilder(
      key: key,
      future: this,
      builder: (context, snapshot) {
        if (eagerLoadingState &&
            snapshot.connectionState == ConnectionState.waiting) {
          return onLoading?.call(context) ?? const SizedBox.shrink();
        }

        if (snapshot.hasError) {
          return onError?.call(context, snapshot.error, snapshot.stackTrace) ??
              const SizedBox.shrink();
        }

        if (snapshot.hasData) {
          return builder(context, snapshot.requireData);
        }

        return onLoading?.call(context) ?? const SizedBox.shrink();
      },
    );
  }
}
