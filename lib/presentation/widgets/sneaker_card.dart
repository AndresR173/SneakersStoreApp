import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../models/sneaker.dart';

class SneakerCard extends StatefulWidget {
  final Sneaker sneaker;
  const SneakerCard({Key? key, required this.sneaker}) : super(key: key);

  @override
  _SneakerCardState createState() => _SneakerCardState();
}

class _SneakerCardState extends State<SneakerCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: AspectRatio(
        aspectRatio: 1.2,
        child: Container(
          decoration: BoxDecoration(
            color: widget.sneaker.background,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(40),
                          child: Transform.rotate(
                            angle: -math.pi / _getRandomAngle(),
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
                          child: Image.asset(
                              'assets/images/${widget.sneaker.gallery.first}'),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.sneaker.category,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              widget.sneaker.name,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              '\$${widget.sneaker.price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color:
                                        darken(widget.sneaker.background, 40),
                                  ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Color(0xFF5F6164),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  int _getRandomAngle() {
    return math.Random().nextInt(11);
  }
}

Color darken(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  final f = 1 - percent / 100;
  return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(),
      (c.blue * f).round());
}
