import 'package:flutter/material.dart';
import 'package:flutter_travel_cubit_app/misc/colors.dart';
import 'package:flutter_travel_cubit_app/widgets/app_button.dart';
import 'package:flutter_travel_cubit_app/widgets/app_large_text.dart';
import 'package:flutter_travel_cubit_app/widgets/app_text.dart';
import 'package:flutter_travel_cubit_app/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStar = 3;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(children: [
          Positioned(
              child: Container(
            height: 350,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("img/mountain.png"),
              fit: BoxFit.cover,
            )),
          )),
          Positioned(
            top: 50,
            left: 20,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
            top: 320,
            child: Container(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLargeText(
                        text: "Yosemite",
                        color: Colors.black.withOpacity(0.8),
                      ),
                      AppLargeText(
                        text: "\$ 250",
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.mainColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      AppText(
                        text: "USA, California",
                        color: AppColors.textColor1,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < gottenStar
                                ? AppColors.starColor
                                : AppColors.textColor1,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      AppText(
                        text: "(4.0)",
                        color: AppColors.textColor1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  AppLargeText(
                    text: "People",
                    color: Colors.black.withOpacity(0.8),
                    size: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  AppText(
                    text: "Number of people in your group",
                    color: AppColors.mainTextColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: List.generate(5, (index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: AppButton(
                          text: (index + 1).toString(),
                          backgroundColor: selectedIndex == index
                              ? Colors.black
                              : AppColors.buttonBackgroundColor,
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.black,
                          borderColor: selectedIndex == index
                              ? Colors.black
                              : AppColors.buttonBackgroundColor,
                          size: 50,
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppLargeText(
                    text: "Description",
                    color: Colors.black.withOpacity(0.8),
                    size: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppText(
                    text:
                        "You must go for a travel. Traveling helps get rid of pressure. Go to the mountains to see the nature.",
                    color: AppColors.mainTextColor,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              children: [
                AppButton(
                  backgroundColor: Colors.white,
                  color: AppColors.textColor1,
                  borderColor: AppColors.textColor1,
                  size: 60,
                  isICon: true,
                  icon: Icons.favorite_border,
                ),
                ResponsiveButton(
                  isResponsive: true,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
