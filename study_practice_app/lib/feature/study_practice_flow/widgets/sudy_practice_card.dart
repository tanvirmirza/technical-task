import 'package:flutter/material.dart';

Widget studyPracticeCard(
    {required IconData icon,
    required String title,
    required Color iconColor,
    String? subtitle}) {
  return Card(
      elevation: 0.5,
      surfaceTintColor: Colors.white,
      shadowColor: Colors.grey.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Colors.blueAccent, width: 1),
      ),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: subtitle!.isEmpty
            ? const EdgeInsets.symmetric(vertical: 8)
            : const EdgeInsets.symmetric(vertical: 0),
        child: ListTile(
          leading: Icon(
            icon,
            color: iconColor,
            size: 45,
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          subtitle: subtitle.isNotEmpty
              ? Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                )
              : null,
        ),
      ));
}