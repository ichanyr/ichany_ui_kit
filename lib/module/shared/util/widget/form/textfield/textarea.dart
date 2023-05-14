import 'package:flutter/material.dart';

class MemoField extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  final String? Function(String?)? validator;
  final Function(String) onChanged;

  const MemoField({
    Key? key,
    required this.label,
    this.value,
    this.validator,
    this.hint,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<MemoField> createState() => _MemoFieldState();
}

class _MemoFieldState extends State<MemoField> {
  FocusNode focusNode = FocusNode();
  GlobalKey key = GlobalKey();

  @override
  void initState() {
    focusNode.addListener(() {
      print("focusNodeListener");
      if (focusNode.hasFocus) {
        Future.delayed(const Duration(milliseconds: 300), () {
          WidgetsBinding.instance
              .addPostFrameCallback((_) => Scrollable.ensureVisible(
                    key.currentContext!,
                    alignmentPolicy:
                        ScrollPositionAlignmentPolicy.keepVisibleAtEnd,
                  ));
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    if (focusNode.hasFocus) {
      Future.delayed(const Duration(milliseconds: 300), () {
        WidgetsBinding.instance
            .addPostFrameCallback((_) => Scrollable.ensureVisible(
                  key.currentContext!,
                  alignmentPolicy:
                      ScrollPositionAlignmentPolicy.keepVisibleAtEnd,
                ));
      });
    }
    return TextFormField(
      key: key,
      initialValue: widget.value,
      focusNode: focusNode,
      validator: widget.validator,
      maxLength: 200,
      maxLines: 6,
      decoration: InputDecoration(
        labelText: "Address",
        icon: Icon(Icons.location_city),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        labelStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        helperText: widget.hint,
      ),
      onChanged: widget.onChanged,
    );
  }
}
