import 'package:flutter/material.dart';
import 'package:movie_streaming_light/theme.dart';
import 'package:movie_streaming_light/widget/star.dart';

class PopularMovieCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final bool starOne, starTwo, starThree, starFour, starFive;

  PopularMovieCard({
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
    return Container(
      height: 285,
      width: 300,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              imageUrl,
              width: 300,
              height: 207,
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                ],
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
      ),
    );
  }
}
