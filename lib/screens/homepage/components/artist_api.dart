import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const artistAPIURL = 'https://api.deezer.com/artist';

class NetworkHelper {
  final Uri url;
  NetworkHelper(this.url);

  getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      print('data = $data');
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

class ArtistApi {
  Future fetchArtistName(int artist) async {
    NetworkHelper networkHelper =
        NetworkHelper(Uri.parse('$artistAPIURL/$artist'));
    var artistData = await networkHelper.getData();
    return artistData;
  }

  Future<List> getArtistData() async {
    NetworkHelper networkHelper = NetworkHelper(Uri.parse(''));
    var searches = await networkHelper.getData();
    return searches;
  }
}
