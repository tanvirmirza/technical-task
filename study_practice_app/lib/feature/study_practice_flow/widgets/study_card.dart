import 'package:flutter/material.dart';

Widget studyCard(
    {required String title,
    required IconData icon,
    required String progress,
    required Color color}) {
  return Card(
    elevation: 0.5,
    surfaceTintColor: Colors.white,
    shadowColor: Colors.grey.withOpacity(0.3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: const BorderSide(color: Colors.blueAccent, width: 1),
    ),
    margin: const EdgeInsets.symmetric(vertical: 6),
    child: ListTile(
      leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color)),
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          )),
      subtitle: Text(progress),
      trailing: const Icon(Icons.arrow_outward_rounded, size: 20),
    ),
  );
}