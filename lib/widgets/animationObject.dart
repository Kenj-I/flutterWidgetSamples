import 'dart:ui';
import 'package:flutter/material.dart';

import '../utils/util.dart';

class AnimationObject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.info('build');
    return Stack(
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: const DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
        // Positioned(
        //   left: 0,
        //   right: 0,
        //   top: 30,
        //   child: ClipRect(
        //     child: BackdropFilter(
        //       filter: ImageFilter.blur(
        //         sigmaX: 10,
        //         sigmaY: 10,
        //       ),
        //       child: Container(
        //         height: 30,
        //         color: Colors.white.withAlpha(50),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
