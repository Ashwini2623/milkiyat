 import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milkiyat/Screens/scroll_pics.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class  banner extends StatefulWidget {
  @override
  State<banner> createState() => _bannerState();
}

class _bannerState extends State<banner> {
   final controller = CarouselController();

    int activeIndex = 0;

    final List<String> AssetImages = [
      "images/house1.jpg",
      "images/house2.jpg",
      "images/house3.jpg",
      "images/house4.jpg",
      
    ];

  get animateToSlide => null;

  @override
  Widget build(BuildContext context)=>Column(
    children: [
    CarouselSlider.builder(
               carouselController: controller,
                    itemCount: AssetImages.length, itemBuilder: (context,index,realIndex){
                    final AssetImage = AssetImages[index];
                    return buildImage(AssetImage,index);
                  }, options: CarouselOptions(
                    height: 180,
                 viewportFraction: 0.9,
            enableInfiniteScroll: false,
                
                
                    autoPlayInterval: Duration(seconds: 2),
                    onPageChanged: (index,reason)=>
                    setState(()=>activeIndex=index),
                    )),
                 SizedBox(height: 10,),
                    buildIndicator(),

                    SizedBox(height: 30,),
                   scrollpics(),
                    ]  );

Widget  buildIndicator()=> AnimatedSmoothIndicator(activeIndex: activeIndex, count: AssetImages.length,
effect: ScrollingDotsEffect(dotWidth: 10,dotHeight: 10,
activeDotColor: Colors.orange,
dotColor: Colors.grey,
),onDotClicked: animateToSlide,);
}

  Widget buildImage(String AssetImage, int index) => Container(
        color: Colors.white,
        child: Image.asset(AssetImage),
      );

