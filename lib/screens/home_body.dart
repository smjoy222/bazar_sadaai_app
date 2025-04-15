import 'package:bazar_sadaai_app/screens/details.dart';
import 'package:bazar_sadaai_app/utils/colors.dart';
import 'package:bazar_sadaai_app/utils/dimensions.dart';
import 'package:bazar_sadaai_app/widgets/big_text.dart';
import 'package:bazar_sadaai_app/widgets/icon_text.dart';
import 'package:bazar_sadaai_app/widgets/small_text.dart';
import 'package:bazar_sadaai_app/widgets/widget_support.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 10),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "BAZAR",
                      style: TextStyle(
                        fontFamily: GoogleFonts.plaster().fontFamily,
                        fontSize: 30,
                        color: AppColors.maincolor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "SHADAI ",
                          style: TextStyle(
                            fontFamily:
                                GoogleFonts.fascinateInline().fontFamily,
                            color: AppColors.maincolor,
                            fontSize: 23,
                          ),
                        ),
                        Icon(
                          Icons.shopping_bag,
                          color: AppColors.maincolor,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.maincolor,
                    ),
                    child: Icon(Icons.search, color: Colors.white, size: 25),
                  ),
                ),
              ],
            ),
          ),
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
          SizedBox(
            height: Dimensions.height20,
          ),
          //popular item
          fruitItem(),
          SizedBox(
            height: Dimensions.height10,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width10,
                right: Dimensions.width10,
                bottom: Dimensions.height10),
            padding: EdgeInsets.all(4),
            child: Material(
              color: const Color.fromARGB(255, 236, 239, 232),
              elevation: 5.0,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Dimensions.width5,
                    ),
                    Image.asset("assets/images/eggs.png",
                        height: 120, width: 120, fit: BoxFit.cover),
                    SizedBox(
                      width: Dimensions.width20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "Eggs",
                            style: AppWidgetSupport.semiBoldTextFeildStyle(),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "Fresh and Healthy",
                            style: AppWidgetSupport.lightTextFeildStyle(),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "\৳110",
                            style: AppWidgetSupport.semiBoldTextFeildStyle(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width10,
                right: Dimensions.width10,
                bottom: Dimensions.height10),
            padding: EdgeInsets.all(4),
            child: Material(
              color: const Color.fromARGB(255, 236, 239, 232),
              elevation: 5.0,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Dimensions.width5,
                    ),
                    Image.asset("assets/images/orange.png",
                        height: 120, width: 120, fit: BoxFit.cover),
                    SizedBox(
                      width: Dimensions.width20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "Orange",
                            style: AppWidgetSupport.semiBoldTextFeildStyle(),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "Fresh and Healthy",
                            style: AppWidgetSupport.lightTextFeildStyle(),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "\৳200",
                            style: AppWidgetSupport.semiBoldTextFeildStyle(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width10,
                right: Dimensions.width10,
                bottom: Dimensions.height10),
            padding: EdgeInsets.all(4),
            child: Material(
              color: const Color.fromARGB(255, 236, 239, 232),
              elevation: 5.0,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Dimensions.width5,
                    ),
                    Image.asset("assets/images/anar.png",
                        height: 120, width: 120, fit: BoxFit.cover),
                    SizedBox(
                      width: Dimensions.width20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "Anar",
                            style: AppWidgetSupport.semiBoldTextFeildStyle(),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "Fresh and Healthy",
                            style: AppWidgetSupport.lightTextFeildStyle(),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "\৳200",
                            style: AppWidgetSupport.semiBoldTextFeildStyle(),
                          ),
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

  Widget fruitItem() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
          left: Dimensions.width10,
          right: Dimensions.width10,
          top: Dimensions.height10,
          bottom: Dimensions.height20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Details()));
            },
            child: Container(
              margin: EdgeInsets.all(4),
              child: Material(
                color: const Color.fromARGB(255, 236, 239, 232),
                elevation: 10.0,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                child: Container(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/avocado.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Avocado",
                        style: AppWidgetSupport.semiBoldTextFeildStyle(),
                      ),
                      SizedBox(
                        height: Dimensions.height5,
                      ),
                      Text(
                        "Fresh and Healthy",
                        style: AppWidgetSupport.lightTextFeildStyle(),
                      ),
                      SizedBox(
                        height: Dimensions.height5,
                      ),
                      Text(
                        "\৳150",
                        style: AppWidgetSupport.semiBoldTextFeildStyle(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: Dimensions.width10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Details()));
            },
            child: Container(
              margin: EdgeInsets.all(4),
              child: Material(
                color: const Color.fromARGB(255, 236, 239, 232),
                elevation: 10.0,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                child: Container(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/palong.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Palong Shak",
                        style: AppWidgetSupport.semiBoldTextFeildStyle(),
                      ),
                      SizedBox(
                        height: Dimensions.height5,
                      ),
                      Text(
                        "Fresh and Healthy",
                        style: AppWidgetSupport.lightTextFeildStyle(),
                      ),
                      SizedBox(
                        height: Dimensions.height5,
                      ),
                      Text(
                        "\৳20",
                        style: AppWidgetSupport.semiBoldTextFeildStyle(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: Dimensions.width10,
          ),
          Container(
            margin: EdgeInsets.all(4),
            child: Material(
              color: const Color.fromARGB(255, 236, 239, 232),
              elevation: 10.0,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              child: Container(
                padding: EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/beef.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Beef",
                      style: AppWidgetSupport.semiBoldTextFeildStyle(),
                    ),
                    SizedBox(
                      height: Dimensions.height5,
                    ),
                    Text(
                      "Fresh and Healthy",
                      style: AppWidgetSupport.lightTextFeildStyle(),
                    ),
                    SizedBox(
                      height: Dimensions.height5,
                    ),
                    Text(
                      "\৳800",
                      style: AppWidgetSupport.semiBoldTextFeildStyle(),
                    )
                  ],
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
              color: index.isEven
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
