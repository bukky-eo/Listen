import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';

class Scrolls extends StatelessWidget {
  final Map<String, dynamic> hits;
  const Scrolls({Key? key, required this.hits}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
          // color: Colors.black,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Container(
              alignment: Alignment.topCenter,
              height: 160,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/${hits['image']}'))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(hits['name'], style: kAppBarText),
        ],
      ),
    );
  }
}

class Designated extends StatelessWidget {
  final String title;
  final Color color;
  final String number;
  final String image;
  const Designated(
      {Key? key,
      required this.title,
      required this.color,
      required this.number,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 35, color: Colors.black),
              ),
              const SizedBox(height: 10),
              Text('Discover $number songs', style: kSmallText),
              const SizedBox(height: 10),
              const Icon(Icons.arrow_forward, color: Colors.black)
            ],
          ),
          Image.asset(
            image,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
