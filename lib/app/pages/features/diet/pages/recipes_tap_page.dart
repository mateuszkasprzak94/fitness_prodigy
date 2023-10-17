// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class RecipesTabPage extends StatefulWidget {
//   const RecipesTabPage({super.key});

//   @override
//   State<RecipesTabPage> createState() => _RecipesTabPageState();
// }

// class _RecipesTabPageState extends State<RecipesTabPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('images_diet/diet.jpg'), fit: BoxFit.cover)),
//         child: Center(
//           child: ListView(
//             children: [
//               const SizedBox(height: 50),
//               Stack(
//                 alignment: Alignment.topCenter,
//                 children: [
//                   Material(
//                     elevation: 8,
//                     borderRadius: BorderRadius.circular(28),
//                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                     child: InkWell(
//                       onTap: () {},
//                       child: Ink.image(
//                         image: const AssetImage('images_diet/proteinn.jpg'),
//                         height: 250,
//                         width: 250,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     'High Protein',
//                     style: GoogleFonts.asul(fontSize: 24, color: Colors.black),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 50),
//               Stack(
//                 alignment: Alignment.topCenter,
//                 children: [
//                   Material(
//                     elevation: 8,
//                     borderRadius: BorderRadius.circular(28),
//                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                     child: InkWell(
//                       onTap: () {},
//                       child: Ink.image(
//                         image: const AssetImage('images_diet/low.jpg'),
//                         height: 250,
//                         width: 250,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     'Low Carbs',
//                     style: GoogleFonts.asul(fontSize: 24, color: Colors.black),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 50),
//               Stack(
//                 alignment: Alignment.topCenter,
//                 children: [
//                   Material(
//                     elevation: 8,
//                     borderRadius: BorderRadius.circular(28),
//                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                     child: InkWell(
//                       onTap: () {},
//                       child: Ink.image(
//                         image: const AssetImage('images_diet/vegan.jpg'),
//                         height: 250,
//                         width: 250,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     'Vegan',
//                     style: GoogleFonts.asul(fontSize: 24, color: Colors.black),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 50),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
