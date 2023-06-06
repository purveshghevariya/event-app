import 'package:event/config/app_colors.dart';
import 'package:event/config/text_style.dart';
import 'package:flutter/material.dart';

Widget eventCard(
    {BuildContext? context,
    String? image,
    String? placeName,
    String? location,
    String? day,
    String? month}) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: SizedBox(
      width: 275,
      child: Stack(children: [
        Container(
          height: 260,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: Image.network(image!).image, fit: BoxFit.cover)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Container(
                height: 60,
                width: 45,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      day!,
                      style: AppTextStyle.regularTextStyle,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      month!,
                      style: AppTextStyle.mediumTextStyle
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              height: 70,
              width: 255,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        placeName!,
                        style: AppTextStyle.regularTextStyle
                            .copyWith(fontSize: 18),
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
                            location!,
                            style: AppTextStyle.smallTextStyle
                                .copyWith(color: AppColors.greyTextColor),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryLightColor),
                    child: Center(
                      child: Image.asset(
                        "assets/icon/pins.png",
                        color: AppColors.primaryColor,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}
