import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeReviewsComponent extends StatefulWidget {
  const HomeReviewsComponent({Key? key}) : super(key: key);

  @override
  _HomeReviewsComponentState createState() => _HomeReviewsComponentState();
}

class _HomeReviewsComponentState extends State<HomeReviewsComponent> {
  double progress1 = 0.89;
  double progress2 = 0.87;
  double progress3 = 0.75;
  double progress4 = 0.62;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: screenSize.height / 16.91,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Reviews',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                height: 23 / 14,
                color: lightTextColor,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height / 90,
          ),
          Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    COLORED_VECTORS_PATH + 'ic_rating.svg',
                    width: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    COLORED_VECTORS_PATH + 'ic_rating.svg',
                    width: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    COLORED_VECTORS_PATH + 'ic_rating.svg',
                    width: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    COLORED_VECTORS_PATH + 'ic_rating.svg',
                    width: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    COLORED_VECTORS_PATH + 'ic_rating.svg',
                    width: 14,
                  ),
                ],
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                '617 reviews',
                style: TextStyle(
                  color: paleTextColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22.92,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 66,
                width: 66,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned.fill(
                      child: CircularProgressIndicator(
                        value: progress1,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xff142c7e),
                        ),
                      ),
                    ),
                    Text('${progress1 * 10}'),
                  ],
                ),
              ),
              Container(
                height: 66,
                width: 66,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned.fill(
                      child: CircularProgressIndicator(
                        value: progress2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          redTextColor,
                        ),
                      ),
                    ),
                    Text('${progress2 * 10}'),
                  ],
                ),
              ),
              Container(
                height: 66,
                width: 66,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned.fill(
                      child: CircularProgressIndicator(
                        value: progress3,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          brandDarkGreen,
                        ),
                      ),
                    ),
                    Text('${progress3 * 10}'),
                  ],
                ),
              ),
              Container(
                height: 66,
                width: 66,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned.fill(
                      child: CircularProgressIndicator(
                        value: progress4,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          redTextColor,
                        ),
                      ),
                    ),
                    Text('${progress4 * 10}'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: brandPaleGreen,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipOval(
                  child: SvgPicture.asset(
                    VECTOR_IMAGES_PATH + 'sarah.svg',
                    height: 46,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sarah Corner',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          height: 23 / 14,
                          color: lightTextColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Incredible pool view. The space was very clean and well kept. Host was very friendly. Highly recommend staying here!',
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontSize: 12,
                          height: 22 / 12,
                          color: lightTextColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
