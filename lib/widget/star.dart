import 'package:flutter/material.dart';
import 'package:movie_streaming_light/theme.dart';

class Star extends StatelessWidget {
  final bool starOne, starTwo, starThree, starFour, starFive;

  Star({
    this.starOne,
    this.starTwo,
    this.starThree,
    this.starFour,
    this.starFive,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: (starOne) ? yellowColor : lightGreyColor,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: (starTwo) ? yellowColor : lightGreyColor,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: (starThree) ? yellowColor : lightGreyColor,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: (starFour) ? yellowColor : lightGreyColor,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: (starFive) ? yellowColor : lightGreyColor,
          size: 20,
        ),
      ],
    );
  }
}
