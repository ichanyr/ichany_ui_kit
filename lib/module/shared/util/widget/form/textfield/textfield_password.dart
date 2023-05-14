import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String? id;
  final String label;
  final String? value;
  final String? hint;
  final String? Function(String?)? validator;
  final bool obscure;
  final bool enabled;
  final int? maxLength;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String) onChanged;
  final Function(String)? onSubmitted;

  const PasswordField({
    Key? key,
    required this.label,
    this.id,
    this.value,
    this.validator,
    this.hint,
    this.maxLength,
    required this.onChanged,
    this.onSubmitted,
    this.obscure = true,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    textEditingController.text = widget.value ?? "";
    super.initState();
  }

  @override
  getValue() {
    return textEditingController.text;
  }

  @override
  setValue(value) {
    textEditingController.text = value;
  }

  @override
  resetValue() {
    textEditingController.text = "";
  }

  @override
  focus() {
    focusNode.requestFocus();
  }

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      controller: textEditingController,
      focusNode: focusNode,
      validator: widget.validator,
      maxLength: widget.maxLength,
      obscureText: widget.obscure,
      decoration: InputDecoration(
        labelText: "Password",
        icon: Icon(
          Icons.key,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        labelStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        helperText: widget.hint,
      ),
      onChanged: (value) {
        widget.onChanged(value);
      },
      onFieldSubmitted: (value) {
        if (widget.onSubmitted != null) widget.onSubmitted!(value);
      },
    );
  }
}
