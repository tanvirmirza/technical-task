import 'package:flutter/material.dart';

Widget profileProgressStatus({
  required String label,
  required String value,
  required BuildContext context,
}) {
  return Card(
    elevation: 0.5,
    surfaceTintColor: Colors.white,
    shadowColor: Colors.grey.withOpacity(0.3),
    margin: const EdgeInsets.only(bottom: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(
        color: Colors.grey.withOpacity(0.1),
        width: 1,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );
}