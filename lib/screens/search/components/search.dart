import 'package:flutter/material.dart';
import 'package:music_app/screens/homepage/components/artist_api.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List searchList = [];
  List filteredList = [];
  ArtistApi artistApi = ArtistApi();
  final TextEditingController _editingController = TextEditingController();
  ValueNotifier<String> artistName = ValueNotifier('');

  void changed(String query) {
    // filteredList = searchList.where((e) => artistApi.getArtistData())
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _editingController,
      decoration: InputDecoration(
          labelText: 'Search',
          labelStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(Icons.search),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          )),
    );
  }
}
