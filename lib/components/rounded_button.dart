import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    this.onTap,
    this.buttonTitle = '',
    this.buttonColor = Colors.lightBlueAccent,
  });

  final VoidCallback? onTap;
  final String buttonTitle;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Material(
        elevation: 5,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200,
          height: 42,
          child: Text(
            buttonTitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
