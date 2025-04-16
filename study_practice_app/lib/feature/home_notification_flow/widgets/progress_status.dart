


import 'package:flutter/material.dart';

Widget progressStatus({required String value, required String lavel}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          )),
      Text(lavel,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12)),
    ],
  );
}