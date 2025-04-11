import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

const Color colorWhite = Colors.white;
const Color colorblueAccent = Colors.blueAccent;
const Color colorGrey = Colors.grey;

//  |--------------------- Progress Stutus ---------------------|

Widget progressStatus({required double value, required String lavel}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(value.toString(),
          style: const TextStyle(
            color: colorWhite,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          )),
      Text(lavel,
          style: const TextStyle(
              color: colorWhite, fontWeight: FontWeight.w300, fontSize: 12)),
    ],
  );
}

//  |--------------------- Dashed Circular Progress Bar ---------------------|

Widget dashedCircularProgressBar(valueNotifier) {
  return SizedBox(
    height: 95,
    width: 95,
    child: DashedCircularProgressBar.aspectRatio(
      aspectRatio: 1,
      valueNotifier: valueNotifier,
      progress: 80,
      startAngle: 210,
      sweepAngle: 310,
      foregroundColor: Colors.amber.shade400,
      backgroundColor: Colors.white24,
      foregroundStrokeWidth: 8,
      backgroundStrokeWidth: 8,
      animation: true,
      seekSize: 6,
      seekColor: const Color(0xffeeeeee),
      child: Center(
        child: ValueListenableBuilder(
            valueListenable: valueNotifier,
            builder: (context, double value, __) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${value.toInt()}%',
                      style: const TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                  ],
                )),
      ),
    ),
  );
}

//  |--------------------- Study Practice Card ---------------------|

Widget studyPracticeCard(
    {required IconData icon,
    required String title,
    required Color iconColor,
    String? subtitle}) {
  return Card(
      elevation: 0.5,
      surfaceTintColor: colorWhite,
      shadowColor: colorGrey.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: colorblueAccent, width: 1),
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
                  style: const TextStyle(fontSize: 14, color: colorGrey),
                )
              : null,
        ),
      ));
}

//  |--------------------- Study Card ---------------------|

Widget studyCard(
    {required String title,
    required IconData icon,
    required String progress,
    required Color color}) {
  return Card(
    elevation: 0.5,
    surfaceTintColor: colorWhite,
    shadowColor: colorGrey.withOpacity(0.3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: const BorderSide(color: colorblueAccent, width: 1),
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

//  |--------------------- Task Status ---------------------|

Widget profileProgressStatus({
  required String label,
  required String value,
  required BuildContext context,
}) {
  return Card(
    elevation: 0.5,
    surfaceTintColor: colorWhite,
    shadowColor: colorGrey.withOpacity(0.3),
    margin: const EdgeInsets.only(bottom: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(
        color: colorGrey.withOpacity(0.1),
        width: 1,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
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
              color: colorGrey,
            ),
          ),
        ],
      ),
    ),
  );
}
