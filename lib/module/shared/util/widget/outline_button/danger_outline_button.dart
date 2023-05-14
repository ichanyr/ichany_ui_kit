// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DangerOutlineButton extends StatelessWidget {
  final Function onPressed;
  final String label;
  const DangerOutlineButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 42,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                side: const BorderSide(
                  color: Colors.red,
                )),
            onPressed: () => onPressed(),
            child: Text(label)));
  }
}
