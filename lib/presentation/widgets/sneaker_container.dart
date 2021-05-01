import 'dart:math' as math;

import 'package:flutter/material.dart';

class SneakerContainer extends StatelessWidget {
  SneakerContainer({
    Key? key,
    required this.asset,
  }) : super(key: key);

  final String asset;
  final int _angle = math.Random().nextInt(11);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Transform.rotate(
              angle: -math.pi / _angle,
              child: SizedBox(
                height: double.infinity,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset('assets/images/$asset'),
          ),
        )
      ],
    );
  }
}
