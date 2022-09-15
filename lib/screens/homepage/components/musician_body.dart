import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/helpers/constants.dart';
import 'package:music_app/screens/homepage/components/artist_api.dart';
import 'dart:math';

class Musicians extends StatefulWidget {
  final artistScreen;
  const Musicians({Key? key, this.artistScreen}) : super(key: key);

  @override
  State<Musicians> createState() => _MusiciansState();
}

class _MusiciansState extends State<Musicians> {
  ArtistApi artist = ArtistApi();
  int? artistName;
  String? artistPicture;
  @override
  void initState() {
    super.initState();
    update(widget.artistScreen);
  }

  void update(dynamic artistData) async {
    if (artistData == null) {
      artistName = null;
      artistPicture = '';
      return update(artistData);
    }
    artistName = artistData['name'] ?? 0;
    print('artist = $artistName');
    artistPicture = artistData['picture'] ?? '';
    // print(artistPicture);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      artistPicture == null ? '' : '$artistPicture',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    '$artistName',
                    style: kSmallText,
                  )
                ],
              ),
            );
          }),
    );
  }
}
