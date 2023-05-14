import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NumberField extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  final String? Function(String?)? validator;
  final Function(String) onChanged;
  final Function(String)? onSubmitted;

  final String? pattern;
  final String? locale;

  const NumberField({
    Key? key,
    required this.label,
    this.value,
    this.validator,
    this.hint,
    required this.onChanged,
    this.onSubmitted,
    this.pattern,
    this.locale = "en_US",
  }) : super(key: key);

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  String? value;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();

    RegExp r = RegExp(r'^[0-9]+(.[0-9]+)?$');
    value = widget.value?.replaceAll(RegExp(r'^[0-9,]+$'), '');
    controller = TextEditingController(
      text: formattedValue,
    );
  }

  String? get formattedValue {
    if (widget.pattern != null) {
      final currencyFormat = NumberFormat(widget.pattern, widget.locale);
      var pValue = num.tryParse(value.toString()) ?? 0;
      print("pValue: $pValue");
      return currencyFormat.format(pValue);
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: widget.validator,
      maxLength: 20,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Phone Number",
        icon: Icon(Icons.phone_android),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        labelStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        helperText: widget.hint,
      ),
      onChanged: (newValue) {
        var newValue = controller.text;
        print("newValue: $newValue");

        value = newValue.replaceAll(RegExp(r'[^0-9.]'), '');

        print("value: $value");
        controller.text = formattedValue ?? "";
        controller.selection =
            TextSelection.collapsed(offset: controller.text.length);

        widget.onChanged(newValue.replaceAll(RegExp(r'D'), ''));
      },
      onFieldSubmitted: (newValue) {
        var newValue = controller.text;
        print("newValue: $newValue");

        value = newValue.replaceAll(RegExp(r'[^0-9.]'), '');

        print("value: $value");
        controller.text = formattedValue ?? "";
        controller.selection =
            TextSelection.collapsed(offset: controller.text.length);

        if (widget.onSubmitted != null) {
          widget.onSubmitted!(newValue.replaceAll(RegExp(r'D'), ''));
        }
      },
    );
  }
}