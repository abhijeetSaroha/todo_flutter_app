import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/colours.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({required this.onPressed, required this.text, super.key});

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.light,
        minimumSize: Size(
          size.width * .9,
          size.height * .06,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colours.darkBackground,
        ),
      ),
    );
  }
}
