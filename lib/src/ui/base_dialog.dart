import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseDialogAction {
  final String text;
  final bool isDestructiveAction;
  final bool isDefaultAction;
  final dynamic value;

  BaseDialogAction({
    required this.text,
    this.isDestructiveAction = false,
    this.isDefaultAction = false,
    this.value,
  });
}

class BaseAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final List<BaseDialogAction> actions;

  const BaseAlertDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          ...actions.map(
            (e) => CupertinoDialogAction(
              isDestructiveAction: e.isDestructiveAction,
              isDefaultAction: e.isDefaultAction,
              onPressed: () {
                Navigator.of(context).pop(e.value);
              },
              child: Text(e.text),
            ),
          )
        ],
      );
    } else {
      return AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          ...actions.map(
            (e) => TextButton(
              onPressed: () {
                Navigator.of(context).pop(e.value);
              },
              child: Text(
                e.text,
                style: TextStyle(
                  color: e.isDestructiveAction ? Colors.red : null,
                ),
              ),
            ),
          )
        ],
      );
    }
  }
}
