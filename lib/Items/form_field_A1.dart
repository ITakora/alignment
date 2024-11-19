import 'package:flutter/material.dart';
import 'package:math_keyboard/math_keyboard.dart';

class FormWidgetA1 extends StatefulWidget {
  const FormWidgetA1({
    super.key,
    required this.hint,
    required this.onChanged,
    required this.controller,
  });

  final String hint;
  final void Function(String) onChanged;
  final MathFieldEditingController controller;

  @override
  State<FormWidgetA1> createState() => _FormWidgetA1State();
}

class _FormWidgetA1State extends State<FormWidgetA1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 70,
          height: 50,
          child: MathFormField(
            onChanged: (value) {
              widget.onChanged(value);
            },
            controller: widget.controller,
            keyboardType: MathKeyboardType.numberOnly,
            decoration: InputDecoration(
                hintText: widget.hint,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        ),
      ],
    );
  }
}
