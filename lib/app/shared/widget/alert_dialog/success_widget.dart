// import 'package:beyond_app/app/shared/resources/colors.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/material.dart';

// class SuccessWidget extends StatefulWidget {
//   final String title;
//   final String text;
//   SuccessWidget({Key? key, required this.title, required this.text}) : super(key: key);

//   @override
//   _SuccessWidgetState createState() => _SuccessWidgetState();
// }

// class _SuccessWidgetState extends State<SuccessWidget> with SingleTickerProviderStateMixin{
//   late AnimationController animationController;

//   @override
//   void initState() {
//     animationController = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 300))..forward();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Material(
//         child: Container(
//           height: 200.h,
//           width: 200.w,
//           decoration: BoxDecoration(
//             color: ColorsApp.white
//           ),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 AnimatedBuilder(
//                   animation: animationController,
//                   builder: (context, child) {
//                     return Transform.rotate(
//                       angle: animationController.value * 2 * 3.14,
//                       child: child);
//                   },
//                   child:  Icon(Icons.check_circle, size: 77.sp, color: ColorsApp.green)
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 15.h, bottom: 3.h),
//                   child: Text(widget.title.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(color: ColorsApp.gray, fontWeight: FontWeight.bold, fontSize: 16.sp)),
//                 ),
//                 Text(widget.text, textAlign: TextAlign.center, style: TextStyle(color: ColorsApp.gray, fontSize: 14.sp)),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }