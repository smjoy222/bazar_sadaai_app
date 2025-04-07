import 'package:bazar_sadaai_app/utils/colors.dart';
import 'package:bazar_sadaai_app/utils/dimensions.dart';
import 'package:bazar_sadaai_app/widgets/big_text.dart';
import 'package:bazar_sadaai_app/widgets/icon_text.dart';
import 'package:bazar_sadaai_app/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  bool fruit = false, vegetable = false, dairy = false, meat = false;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currPageValue = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider section
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        //dots
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.maincolor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        //category section
        showItem(),
        //Popular text
        SizedBox(height: Dimensions.height30),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(
                text: "Popular",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: SmallText(text: "Food pairing"),
              ),
            ],
          ),
        ),
        //list of food and images
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width10,
                  bottom: Dimensions.height10,
                ),
                child: Row(
                  children: [
                    //image section
                    Container(
                      width: Dimensions.listViewImgSize,
                      height: Dimensions.listViewImgSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius20,
                        ),
                        color: const Color.fromARGB(97, 232, 144, 20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/red-apple.png'),
                        ),
                      ),
                    ),
                    //text container
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextContSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: Dimensions.width10,
                            left: Dimensions.width10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(
                                text: "Fresh Red Apple",
                                color: Colors.black,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: Dimensions.height10),
                              SmallText(text: "Original Chinese Red Apple"),
                              SizedBox(height: Dimensions.height10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    text: '1 Day',
                                    iconColor: AppColors.iconColor2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
        ),
      ],
    );
  }

  Widget showItem() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              fruit = true;
              vegetable = false;
              dairy = false;
              meat = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(Dimensions.radius10),
              child: Container(
                decoration: BoxDecoration(
                  color: fruit ? AppColors.maincolor : Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "assets/images/cate-1.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              fruit = false;
              vegetable = true;
              dairy = false;
              meat = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(Dimensions.radius10),
              child: Container(
                decoration: BoxDecoration(
                  color: vegetable ? AppColors.maincolor : Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "assets/images/cate-2.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              fruit = false;
              vegetable = false;
              dairy = false;
              meat = true;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(Dimensions.radius10),
              child: Container(
                decoration: BoxDecoration(
                  color: meat ? AppColors.maincolor : Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "assets/images/cate-3.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              fruit = false;
              vegetable = false;
              dairy = true;
              meat = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(Dimensions.radius10),
              child: Container(
                decoration: BoxDecoration(
                  color: dairy ? AppColors.maincolor : Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                ),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "assets/images/cate-4.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color:
                  index.isEven
                      ? const Color.fromARGB(255, 236, 144, 7)
                      : const Color.fromARGB(
                        255,
                        213,
                        192,
                        2,
                      ), // Change this to your desired color
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/straw.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.boxshadow,
                    blurRadius: 5.0,
                    offset: const Offset(0, 5),
                  ),
                  BoxShadow(color: Colors.white, offset: const Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: const Offset(5, 0)),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: Dimensions.height15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: 'Fresh Strawberries',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(height: Dimensions.height10),
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
                    SizedBox(height: Dimensions.height15),
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
                          text: '1 Day',
                          iconColor: AppColors.iconColor2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}