// import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

// class BarcodeScannerScreen extends StatefulWidget {
//   const BarcodeScannerScreen({super.key});

//   @override
//   State<BarcodeScannerScreen> createState() => _BarcodeScannerScreenState();
// }

// class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> {
//   final MobileScannerController controller = MobileScannerController();

//   String? scannedCode;
//   bool isTorchOn = false;
//   @override
//   void initState() {
//     super.initState();
//     // controller.start();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('مسح الهوية'),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 setState(() {
//                   controller.toggleTorch();
//                   isTorchOn = controller.torchEnabled;
//                 });
//               },
//               icon: Icon(isTorchOn ? Icons.flash_on : Icons.flash_off))
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: MobileScanner(
//               controller: controller,
//               scanWindow: Rect.fromCenter(
//                 center: MediaQuery.of(context).size.center(Offset.zero),
//                 width: 200,
//                 height: 400,
//               ),
//               overlayBuilder: (context, constraints) {
//                 final size = constraints.biggest;
//                 final cutoutWidth = 200.0;
//                 final cutoutHeight = 400.0;

//                 return Stack(
//                   children: [
//                     // Dark semi-transparent overlay
//                     // Container(
//                     //   width: size.width,
//                     //   height: size.height,
//                     //   color: Colors.black.withOpacity(0.5),
//                     // ),
//                     // Transparent cutout
//                     Positioned(
//                       left: (size.width - cutoutWidth) / 2,
//                       top: (size.height - cutoutHeight) / 2,
//                       child: Container(
//                         width: cutoutWidth,
//                         height: cutoutHeight,
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           border: Border.all(color: Colors.white, width: 2),
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//               onDetectError: (error, stackTrace) => print(error),
//               onDetect: (capture) {
//                 final barcode = capture.barcodes.first;
//                 print("---------------------------------");
//                 print(barcode.rawValue);
//                 print("---------------------------------");
//                 setState(() {
//                   scannedCode = barcode.rawValue;
//                 });
//               },
//             ),
//           ),
//           if (scannedCode != null)
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text('Scanned: $scannedCode'),
//             ),
//         ],
//       ),
//     );
//   }
// }
