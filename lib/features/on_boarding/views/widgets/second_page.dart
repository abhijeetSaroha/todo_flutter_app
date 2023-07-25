import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/common/widgets/round_button.dart';
import 'package:todo_app/core/res/colours.dart';

import '../../../../core/common/widgets/white_space.dart';
import '../../../../core/res/image_res.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 30.0).copyWith(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageRes.todo),
          const WhiteSpace(
            width: 0,
            height: 50,
          ),
          RoundButton(onPressed: (){}, text: "Login with Phone")
        ],
      ),
    );
  }
}
