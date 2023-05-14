// TODO Implement this library.// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SecondaryOutlineButton extends StatelessWidget {
  final Function onPressed;
  final String label;
  const SecondaryOutlineButton({
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
                foregroundColor: Color(0xffA9907E),
                side: const BorderSide(
                  color: Color(0xffA9907E),
                )),
            onPressed: () => onPressed(),
            child: Text(label)));
  }
}
