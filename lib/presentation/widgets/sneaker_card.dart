import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../models/sneaker.dart';

class SneakerCard extends StatefulWidget {
  final Sneaker sneaker;
  const SneakerCard({Key? key, required this.sneaker}) : super(key: key);

  @override
  _SneakerCardState createState() => _SneakerCardState();
}

class _SneakerCardState extends State<SneakerCard>
    with SingleTickerProviderStateMixin {
  bool detailsHidden = false;
  final int _angle = math.Random().nextInt(11);

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        detailsHidden = !detailsHidden;
                      });
                    },
                    child: Stack(
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
                            child: Image.asset(
                                'assets/images/${widget.sneaker.gallery.first}'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.fastOutSlowIn,
                  vsync: this,
                  child: _SneakerDetails(
                    sneaker: widget.sneaker,
                    isHidden: detailsHidden,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SneakerDetails extends StatelessWidget {
  const _SneakerDetails({
    Key? key,
    required this.sneaker,
    required this.isHidden,
  }) : super(key: key);

  final Sneaker sneaker;
  final bool isHidden;

  @override
  Widget build(BuildContext context) {
    return isHidden
        ? const SizedBox.shrink()
        : Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sneaker.category,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      sneaker.name,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      '\$${sneaker.price}',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: darken(
                              sneaker.background,
                              40,
                            ),
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
          );
  }
}

Color darken(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  final f = 1 - percent / 100;
  return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(),
      (c.blue * f).round());
}
