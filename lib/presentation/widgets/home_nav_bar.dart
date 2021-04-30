import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  final String title;
  const HomeNavBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => {},
          child: const Icon(Icons.menu),
        ),
        Expanded(
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
        GestureDetector(
          onTap: () => {},
          child: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
