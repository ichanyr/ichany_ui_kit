// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SuccessOutlineButton extends StatelessWidget {
  final Function onPressed;
  final String label;
  const SuccessOutlineButton({
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
                foregroundColor: Colors.green,
                side: const BorderSide(
                  color: Colors.green,
                )),
            onPressed: () => onPressed(),
            child: Text(label)));
  }
}
