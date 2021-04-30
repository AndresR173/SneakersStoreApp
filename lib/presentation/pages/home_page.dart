import 'package:flutter/material.dart';
import 'package:sneakers_store/models/sneaker.dart';
import 'package:sneakers_store/presentation/widgets/home_nav_bar.dart';
import 'package:sneakers_store/presentation/widgets/search_bar.dart';
import 'package:sneakers_store/presentation/widgets/sneaker_card.dart';
import 'package:sneakers_store/utils/mock/sneakers_loader.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Sneaker>>(
        future: SneakersLoader().loadSneakers(context),
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
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const HomeNavBar(title: 'New arrival'),
              const SizedBox(height: 24),
              const SearchBar(hint: 'Search items'),
              const SizedBox(height: 16),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext contexr, int index) =>
                            SneakerCard(sneaker: sneakers[index]),
                        childCount: sneakers.length,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
