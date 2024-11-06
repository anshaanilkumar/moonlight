// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Cancel extends StatelessWidget {
//   final String title;
//   final String cancelledDate;
//   final String imagePath;
//
//   const Cancel({
//     Key? key,
//     required this.title,
//     required this.cancelledDate,
//     required this.imagePath,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  Expanded(
//       child: ListView.builder(
//         itemCount: viewModel.cancels.length,
//         itemBuilder: (context, index) {
//           final order = viewModel.cancels[index];
//           return ListTile(
//             leading: Image.asset(order.imagePath),
//             title: Text(
//               order.title,
//               style: GoogleFonts.montserrat(
//                 textStyle: Theme.of(context).textTheme.bodyLarge,
//                 fontSize: 12.sp,
//                 color: Colors.black,
//               ),
//             ),
//             subtitle: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Cancelled on ${order.cancelledDate}',
//                   style: GoogleFonts.montserrat(
//                     textStyle: Theme.of(context).textTheme.bodySmall,
//                     fontSize: 10.sp,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 SizedBox(height: 4),
//               ],
//             ),
//             trailing: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.chevron_right,size: 35,),
//               ],
//             ),
//             // isThreeLine: true,
//           );
//         },
//       ),
//     );
//   }
// }
