import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final void Function()? onTap;
  final Color? buttonColor;
  final Color? textColor;
  const ConfirmButton(
      {super.key, required this.onTap, this.textColor, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: MaterialButton(
        onPressed: onTap,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        color: buttonColor ?? Colors.red,
        child: Text(
          'Confirm',
          style: TextStyle(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
