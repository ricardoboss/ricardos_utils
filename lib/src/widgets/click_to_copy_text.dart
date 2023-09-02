import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClickToCopyText extends StatefulWidget {
  final String text;
  final FutureOr<void> Function()? onCopied;

  const ClickToCopyText(
    this.text, {
    super.key,
    this.onCopied,
  });

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

          if (!mounted) return;
          final callback = widget.onCopied;
          if (callback != null) await callback();
        },
        child: Tooltip(
          message: 'Click to copy',
          child: Text(widget.text),
        ),
      ),
    );
  }
}
