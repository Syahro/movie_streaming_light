import 'package:flutter/material.dart';
import 'package:movie_streaming_light/theme.dart';
import 'package:movie_streaming_light/widget/sugestion_movie_card.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            color: whiteColor,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightGreyColor.withOpacity(0.4),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(60),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: lightGreyColor.withOpacity(0.4),
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(60),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 7,
                  child: Container(
                    color: lightGreyColor.withOpacity(0.4),
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 38,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 327,
                          height: 45,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 25,
                                  color: darkBlueColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'The Dar',
                                  style: subTitleTextStyle.copyWith(
                                    fontSize: 16,
                                    color: darkBlueColor,
                                  ),
                                ),
                                Container(
                                  height: 17,
                                  width: 1,
                                  color: darkBlueColor,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Search Result ',
                            style: titleTextStyle.copyWith(fontSize: 20),
                            children: [
                              TextSpan(
                                text: '(3)',
                                style: subTitleTextStyle.copyWith(
                                  fontSize: 20,
                                  color: darkBlueColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SugestionMovieCard(
                          imageUrl: 'assets/movie5.png',
                          title: 'The Dark II',
                          subTitle: 'Horror',
                          starOne: true,
                          starTwo: true,
                          starThree: true,
                          starFour: true,
                          starFive: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SugestionMovieCard(
                          imageUrl: 'assets/movie6.png',
                          title: 'The Dark Knight',
                          subTitle: 'Heroes',
                          starOne: true,
                          starTwo: true,
                          starThree: true,
                          starFour: true,
                          starFive: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SugestionMovieCard(
                          imageUrl: 'assets/movie7.png',
                          title: 'The Dark Tower',
                          subTitle: 'Action',
                          starOne: true,
                          starTwo: true,
                          starThree: true,
                          starFour: true,
                          starFive: false,
                        ),
                        SizedBox(
                          height: 73,
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width -
                                (6 * (defaultMargin)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: RaisedButton(
                                onPressed: () {},
                                color: darkBlueColor,
                                child: Text(
                                  'Suggest Movie',
                                  style: titleTextStyle.copyWith(
                                    fontSize: 16,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
