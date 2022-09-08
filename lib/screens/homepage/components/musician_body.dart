import 'package:flutter/material.dart';
import 'package:music_app/helpers/constants.dart';
import 'package:music_app/screens/homepage/components/artist_api.dart';

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
      return;
    }
    artistName = artistData['name'];
    artistPicture = artistData['picture'];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network('$artistPicture'),
              ),
              Text(
                '$artistName',
                style: kSmallText,
              )
            ],
          );
        });
  }
}
