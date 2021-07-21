import 'package:flutter/material.dart';
import 'package:movie_streaming_light/theme.dart';
import 'package:movie_streaming_light/widget/popular_movie_card.dart';
import 'package:movie_streaming_light/widget/star.dart';
import 'package:movie_streaming_light/widget/sugestion_movie_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(
              left: defaultMargin,
              top: 30,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Moviez',
                            style: titleTextStyle.copyWith(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Watch much easier',
                            style: subTitleTextStyle,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularMovieCard(
                        imageUrl: 'assets/movie1.png',
                        title: 'John Wick 4',
                        subTitle: 'Action, Crime',
                        starOne: true,
                        starTwo: true,
                        starThree: true,
                        starFour: true,
                        starFive: true,
                      ),
                      SizedBox(
                        width: defaultMargin,
                      ),
                      PopularMovieCard(
                        imageUrl: 'assets/movie2.png',
                        title: 'Bohemian',
                        subTitle: 'Documentary',
                        starOne: true,
                        starTwo: true,
                        starThree: true,
                        starFour: false,
                        starFive: false,
                      ),
                      SizedBox(
                        width: defaultMargin,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'From Disney',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                SugestionMovieCard(
                  imageUrl: 'assets/movie3.png',
                  title: 'Mulan Session',
                  subTitle: 'History, War',
                  starOne: true,
                  starTwo: true,
                  starThree: true,
                  starFour: false,
                  starFive: false,
                ),
                SizedBox(
                  height: 30,
                ),
                SugestionMovieCard(
                  imageUrl: 'assets/movie4.png',
                  title: 'Beauty & Beast',
                  subTitle: 'Sci-Fiction',
                  starOne: true,
                  starTwo: true,
                  starThree: true,
                  starFour: true,
                  starFive: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
