import 'package:flutter/material.dart';
import 'package:sneakers_store/models/sneaker.dart';
import 'package:sneakers_store/utils/mock/sneakers_loader.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Sneaker>>(
        future: SneakersLoader().loadSneakers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) return _SneakersList(sneakers: snapshot.data!);
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class _SneakersList extends StatelessWidget {
  final List<Sneaker> sneakers;
  const _SneakersList({Key? key, required this.sneakers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
