import 'package:flutter/material.dart';

import '../../models/sneaker.dart';
import '../widgets/sneaker_container.dart';

class SneakersDetails extends StatelessWidget {
  final Sneaker sneaker;
  const SneakersDetails({Key? key, required this.sneaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 400,
              color: sneaker.background,
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Expanded(
                    child: Hero(
                      tag: 'sneaker${sneaker.id}',
                      child: SneakerContainer(
                        asset: sneaker.gallery.first,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
