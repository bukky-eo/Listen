import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/helpers/constants.dart';
import 'package:music_app/helpers/widgets.dart';
import 'package:music_app/screens/homepage/components/artist_api.dart';
import 'package:music_app/screens/homepage/components/musician_body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    getArtistData();
    super.initState();
  }

  Random random = Random();
  late final _randomOne = random.nextInt(10);
  void getArtistData() async {
    ArtistApi artistApis = ArtistApi();
    var artistData = await artistApis.fetchArtistName(_randomOne);
    Musicians(artistScreen: artistData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Good Morning ✨',
                      style: kGoodText,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30.0,
                      // backgroundImage: Image,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Followed Artist',
                  style: kSmallClassText,
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  height: 100,
                  child: Musicians(),
                ),
                const SeeAll(
                  text: 'Recently Played',
                ),
                const SizedBox(height: 10),
                const SeeAll(text: 'Top Daily Playlist')
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

// ()dk8970
