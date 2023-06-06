import 'package:event/config/app_colors.dart';
import 'package:event/config/text_style.dart';
import 'package:event/widgets/event_card.dart';
import 'package:event/widgets/textfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List popularEventDataList = [
    {
      "placeName": "Festival chinatown",
      "location": "jalarta, Indonesia",
      "image":
          "https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2014/12/Yokohama-Lanterns-iStock-kanzilyou-770x513.jpg",
      "day": "12",
      "month": "Feb"
    },
    {
      "placeName": "Tanabata festival",
      "location": "Sendai, Japan",
      "image":
          "https://blog.japanwondertravel.com/wp-content/uploads/2021/06/Tanabata-1536x1098.jpg",
      "day": "16",
      "month": "Mar"
    },
  ];
  List monthEvent = [
    {
      "placeName": "Festival chinatown",
      "location": "jalarta, Indonesia",
      "image":
          "https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2014/12/Yokohama-Lanterns-iStock-kanzilyou-770x513.jpg",
      "day": "12",
      "month": "Feb"
    },
    {
      "placeName": "Tanabata festival",
      "location": "Sendai, Japan",
      "image":
          "https://blog.japanwondertravel.com/wp-content/uploads/2021/06/Tanabata-1536x1098.jpg",
      "day": "16",
      "month": "Mar"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Location",
                        style:
                            AppTextStyle.mediumTextStyle.copyWith(fontSize: 22),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 19,
                            color: AppColors.greyColor,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "jakarta, Indonesia",
                            style: AppTextStyle.smallTextStyle
                                .copyWith(color: AppColors.greyTextColor),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                      backgroundImage: Image.network(
                              "https://images.unsplash.com/photo-1609010697446-11f2155278f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGUlMjBwaG90b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
                          .image,
                      radius: 24),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            textview(
                controller: TextEditingController(),
                hintText: "Search Event",
                hintTextColor: AppColors.greyTextColor,
                isPrefixWidget: true,
                prefix: const Icon(
                  Icons.search,
                  color: AppColors.greyColor,
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        "Popular Event",
                        style: AppTextStyle.regularTextStyle,
                      ),
                      const Spacer(),
                      Text(
                        "View All",
                        style: AppTextStyle.smallTextStyle
                            .copyWith(color: AppColors.greyTextColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 340,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: popularEventDataList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return eventCard(
                            day: popularEventDataList[index]['day'],
                            image: popularEventDataList[index]['image'],
                            location: popularEventDataList[index]['location'],
                            month: popularEventDataList[index]['month'],
                            placeName: popularEventDataList[index]
                                ['placeName']);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        "Event This Month",
                        style: AppTextStyle.regularTextStyle,
                      ),
                      const Spacer(),
                      Text(
                        "View All",
                        style: AppTextStyle.smallTextStyle
                            .copyWith(color: AppColors.greyTextColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 340,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: monthEvent.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return eventCard(
                            day: monthEvent[index]['day'],
                            image: monthEvent[index]['image'],
                            location: monthEvent[index]['location'],
                            month: monthEvent[index]['month'],
                            placeName: monthEvent[index]['placeName']);
                      }),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
