import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/character/data/remote/character_model.dart';

class CharacterDetailPage extends StatelessWidget {
  const CharacterDetailPage({super.key, required this.chacarterModel});
  final CharacterModel chacarterModel;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: height * 0.40,
                floating: true,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Hero(
                    tag: chacarterModel.id,
                    child: Image.network(
                      height: height * 0.40,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      chacarterModel.image,
                    ),
                  ),
                ),
              )
            ];
          },
          body: Column(
            children: [Text(chacarterModel.name)],
          )),
    );
  }
}
