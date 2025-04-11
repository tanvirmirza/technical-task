import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_practice_app/ui/utils/utils.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final double progress;
  final Color iconColor;

  const FeatureCard({
    super.key,
    required this.title,
    required this.progress,
    required this.icon,
    required this.iconColor,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return
        // GestureDetector(
        //     onTap: onTap,
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.circular(10),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: colorWhite,
        //           boxShadow: [
        //             BoxShadow(
        //               color: Colors.grey.withOpacity(0.5),
        //               spreadRadius: 2,
        //               blurRadius: 5,
        //               offset: const Offset(0, 3),
        //             ),
        //           ],
        //           borderRadius: BorderRadius.circular(10),
        //         ),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.stretch,
        //           children: [
        //             Icon(
        //               icon,
        //               color: iconColor,
        //               size: 40,
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(left: 5),
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     title,
        //                     style: const TextStyle(
        //                         fontSize: 15, fontWeight: FontWeight.bold),
        //                   ),
        //                   Text(
        //                     subtitle,
        //                     style: const TextStyle(
        //                         fontSize: 11,
        //                         fontWeight: FontWeight.w300,
        //                         color: colorGrey),
        //                   ),
        //                   Align(
        //                     alignment: Alignment.centerRight,
        //                     child: Text(
        //                       "${(progress * 100).toStringAsFixed(0)}%",
        //                       style: const TextStyle(
        //                         fontSize: 13,
        //                         fontWeight: FontWeight.w500,
        //                         color: colorGrey,
        //                       ),
        //                     ),
        //                   ),
        //                   Slider(
        //                     value: progress,
        //                     min: 0,
        //                     max: 1,
        //                     onChanged: (value) {},
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ));

        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/studyPractice');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                  decoration: BoxDecoration(
                    color: colorWhite,
                    boxShadow: [
                      BoxShadow(
                        color: colorGrey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                icon,
                                color: iconColor,
                                size: 40,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                title,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                subtitle,
                                style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: colorGrey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "${(progress * 100).toStringAsFixed(0)}%",
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: colorGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              trackHeight: 22.0,
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 11.6,
                              ),
                              activeTrackColor:
                                  colorblueAccent.withOpacity(0.3),
                              inactiveTrackColor: Colors.grey.shade100),
                          child: Slider(
                            value: progress,
                            min: 0,
                            max: 1,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  )),
            ));
//
  }
}

// GestureDetector(
//       onTap: onTap,
//       child: Card(
//           elevation: 0.5,
//           surfaceTintColor: colorWhite,
//           shadowColor: colorGrey.withOpacity(0.3),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//             side: BorderSide(
//               color: colorGrey.withOpacity(0.1),
//               width: 1,
//             ),
//           ),
