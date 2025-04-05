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
  PageController pageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10), // for image gap
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:
                index.isEven ? Colors.blue : Color.fromARGB(255, 42, 234, 32),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/straw.png"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 30,right: 30,bottom: 30,), // for image gap
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              //index.isEven ? Colors.blue : Color.fromARGB(255, 42, 234, 32),
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: AssetImage("bazar_sadaai_app/assets/images/straw.png"),
              // ),
            ),
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              BigText(text: "Fresh Strawberries", color: Colors.black, size: 20,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Wrap(
                    children: List.generate(5, (index) {
                      return Icon(Icons.star, color: Colors.yellow, size: 15,);}),
                  ),
                  SizedBox(width: 10,),
                  SmallText(text: "4.5",),
                  SizedBox(width: 10,),
                  SmallText(text: "1287",),
                  SizedBox(width: 10,),
                  SmallText(text: "Comments",),
                  
                   
                ],

              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  IconText(icon: Icons.circle_sharp, text: "Good", iconColor: AppColors.iconColor1,),
                  IconText(icon: Icons.location_on, text: "KM ", iconColor: AppColors.maincolor,),
                  IconText(icon: Icons.access_time_rounded, text: "min ", iconColor: AppColors.iconColor2,)
                ],
              ),
            ],
           ),
          ),
          ),
        ),
      ],
    );
  }
}
