import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/colours.dart';

class FadingText extends StatelessWidget {
  const FadingText({required this.text, this.fontSize, this.fontWeight, this.color, this.textAlign, super.key});

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      softWrap: false,
      overflow: TextOverflow.fade,
      textAlign: textAlign ?? TextAlign.left,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colours.light,
      ),
    );
  }
}
