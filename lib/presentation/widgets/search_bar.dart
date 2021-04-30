import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hint;
  const SearchBar({Key? key, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFECF2F4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          const Icon(
            Icons.search,
            color: Color(0xFFC4C4C4),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hint,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintStyle: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: const Color(0xFFC4C4C4)),
                contentPadding: const EdgeInsets.all(10.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
