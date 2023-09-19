import 'package:flutter/material.dart';

const bottomSheetShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  ),
);

Future<dynamic> showAppBottomSheet(
  BuildContext context, {
  required WidgetBuilder builder,
  Color? backgroundColor,
}) {
  return showModalBottomSheet(
    context: context,
    shape: bottomSheetShape,
    backgroundColor: backgroundColor,
    builder: (_) => SafeArea(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(_).size.height - kToolbarHeight,
        ),
        child: builder(_),
      ),
    ),
    isScrollControlled: true,
  );
}
