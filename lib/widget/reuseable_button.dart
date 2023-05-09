import 'package:flutter/material.dart';

class ReUseAbleButton extends StatelessWidget {
  const ReUseAbleButton({
    super.key,
    required this.text,
    required this.ontap,
  });

  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: MaterialButton(
        onPressed: ontap,
        minWidth: size.width * 0.9,
        height: size.height * 0.07,
        color: const Color(0xff141414),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
