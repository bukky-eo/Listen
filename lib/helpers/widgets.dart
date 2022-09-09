import 'package:flutter/material.dart';
import 'package:music_app/helpers/constants.dart';

class SeeAll extends StatelessWidget {
  final String text;
  const SeeAll({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: kSmallClassText,
        ),
        GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'See all',
                  style: kSmallText,
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.grey,
                )
              ],
            )),
      ],
    );
  }
}
