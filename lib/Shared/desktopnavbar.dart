import 'package:flutter/material.dart';

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: NavigationToolbar(
        middle: Text('test'),
      ),
      // Container(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text(
      //         'iHack RLP',
      //         style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //             fontSize: 30),
      //       ),
      //       Row(
      //         children: [
      //           Text(
      //             'Home',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           SizedBox(
      //             width: 30,
      //           ),
      //           Text(
      //             'About',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           SizedBox(
      //             width: 30,
      //           ),
      //           MaterialButton(
      //             color: Colors.blue,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.all(
      //                 Radius.circular(16),
      //               ),
      //             ),
      //             onPressed: () {},
      //             child: Text(
      //               'Get started',
      //               style: TextStyle(
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
