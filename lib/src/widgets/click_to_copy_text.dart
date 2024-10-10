part of '../widgets.dart';

class ClickToCopyText extends StatefulWidget {
  const ClickToCopyText(
    this.text, {
    super.key,
    this.onCopied,
  });

  final String text;
  final FutureOr<void> Function()? onCopied;

  @override
  State<ClickToCopyText> createState() => _ClickToCopyTextState();
}

class _ClickToCopyTextState extends State<ClickToCopyText> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          await Clipboard.setData(ClipboardData(text: widget.text));

          if (!mounted) {
            return;
          }

          final callback = widget.onCopied;
          if (callback != null) {
            await callback();
          }
        },
        child: Tooltip(
          message: 'Click to copy',
          child: Text(widget.text),
        ),
      ),
    );
  }
}
