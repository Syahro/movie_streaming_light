import 'package:flutter/material.dart';
import 'package:movie_streaming_light/theme.dart';
import 'package:movie_streaming_light/widget/star.dart';

class SugestionMovieCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final bool starOne, starTwo, starThree, starFour, starFive;

  SugestionMovieCard({
    this.imageUrl,
    this.title,
    this.subTitle,
    this.starOne,
    this.starTwo,
    this.starThree,
    this.starFour,
    this.starFive,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            imageUrl,
            width: 100,
            height: 127,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: titleTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              subTitle,
              style: subTitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Star(
              starOne: starOne,
              starTwo: starTwo,
              starThree: starThree,
              starFour: starFour,
              starFive: starFive,
            ),
          ],
        )
      ],
    );
  }
}
