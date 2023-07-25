import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/common/widgets/fading_text.dart';
import '../../../../core/common/widgets/white_space.dart';
import '../../../../core/res/colours.dart';
import '../../../../core/res/image_res.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0)
          .copyWith(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageRes.todo),
          const WhiteSpace(
            width: 0,
            height: 100,
          ),
          const FadingText(
            text: "ToDo with Riverpod",
            textAlign: TextAlign.center,
          ),
          const WhiteSpace(
            width: 0,
            height: 10,
          ),
          Text(
            "Welcome!!! Do you want to clear tasks super fast with Todo?",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colours.lightGrey),
          ),
        ],
      ),
    );
  }
}
