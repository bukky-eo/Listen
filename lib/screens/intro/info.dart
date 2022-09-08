import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/helpers/constants.dart';
import 'package:music_app/mainpage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/persons.jpg',
              ),
              fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.85),
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Millions of Music',
                  style: kBigText,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Be the first to discover,play and share your favourite tracks from emerging artists',
                  style: kSmallText,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kNext,
                  ),
                  child: IconButton(
                    alignment: Alignment.center,
                    icon: const Icon(
                      Icons.play_arrow_rounded,
                      size: 40,
                      color: Colors.black,
                    ),
                    onPressed: () => Get.to(() => const MusicView()),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// ()dk0987
