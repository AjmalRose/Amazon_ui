import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Account.dart';

Widget accountButton({String? text, BuildContext? context}) {
  return SizedBox(
    width: 180,
    height: 50,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(backgroundColor: Colors.grey[200]),
      onPressed: () {
        Navigator.push(
          context!,
          MaterialPageRoute(builder: (context) => const Account()),
        );
      },
      child: Text(
        text!,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
  );
}

Widget containerBtn({required double width, required String text}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey[300]!),
      borderRadius: BorderRadius.circular(10),
    ),
    width: width,
    height: 50,
    child: Center(
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
    ),
  );
}
