import 'package:bazar_sadaai_app/utils/colors.dart';
import 'package:bazar_sadaai_app/widgets/big_text.dart';
import 'package:bazar_sadaai_app/widgets/icon_text.dart';
import 'package:bazar_sadaai_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 5,
        itemBuilder: (context, index) => _buildPageItem(index),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.blue : const Color.fromARGB(255, 42, 234, 32),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/straw.png'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                  text: 'Fresh Strawberries',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(5, (i) {
                        return const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        );
                      }),
                    ),
                    const SizedBox(width: 10),
                    SmallText(text: '4.5'),
                    const SizedBox(width: 10),
                    SmallText(text: '1287'),
                    const SizedBox(width: 10),
                    SmallText(text: 'Comments'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                      icon: Icons.circle_sharp,
                      text: 'Good',
                      iconColor: AppColors.iconColor1,
                    ),
                    IconText(
                      icon: Icons.location_on,
                      text: '1.7km',
                      iconColor: AppColors.maincolor,
                    ),
                    IconText(
                      icon: Icons.access_time_rounded,
                      text: '32min',
                      iconColor: AppColors.iconColor2,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
