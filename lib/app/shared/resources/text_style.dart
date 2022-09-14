import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class TextStyles {
  static final title = GoogleFonts.lexend(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: ColorsApp.white,
  );

  static final regular = GoogleFonts.lexend(
    fontSize: 14.sp,
    color: ColorsApp.gray,
  );
  static final titleCard = GoogleFonts.lexend(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    color: ColorsApp.white,
  );
  static final subCard = GoogleFonts.lexend(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    color: ColorsApp.gray,
  );
}
