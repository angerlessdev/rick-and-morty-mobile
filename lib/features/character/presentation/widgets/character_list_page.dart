import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/character/data/remote/character_model.dart';
import 'package:rick_and_morty/features/character/data/remote/character_service.dart';

class CharacterListPage extends StatefulWidget {
  const CharacterListPage({super.key});

  @override
  State<CharacterListPage> createState() => _CharacterListPageState();
}

class _CharacterListPageState extends State<CharacterListPage> {
  List<CharacterModel> _characters = [];

  Future<void> _loadData() async {
    List<CharacterModel> characters = await CharacterService().getCharacters();
    setState(() {
      _characters = characters;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _characters.length,
      itemBuilder: (context, index) {
        return Text(_characters[index].name);
      },
    );
  }
}
