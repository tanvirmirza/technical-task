import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

Widget dashedCircularProgressBar(valueNotifier) {
  return SizedBox(
    height: 90,
    width: 90,
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
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                  ],
                )),
      ),
    ),
  );
}