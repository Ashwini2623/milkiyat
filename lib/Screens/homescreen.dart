import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:milkiyat/CommonWidgets/common_styles.dart';
import 'package:milkiyat/Screens/banner.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = CarouselController();
    int activeIndex = 0;
    final List<String> AssetImages = [
      "images/house1.jpg",
      "images/house2.jpg",
      
    ];
    return Scaffold(
  
      body: SingleChildScrollView(
        child: Column(
          children:[
             Stack(
            children: [
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: AssetImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final AssetImage = AssetImages[index];
 
                    return buildImage(AssetImage, index);
                  },
                  options: CarouselOptions(
                    height: 221,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                  
                    pageSnapping: true,
                    viewportFraction: 1,
                   
                  )), Positioned(
            left: 20,
            top: 40,
            right: 20,
            child: Column(
              children: [
                Row(
                  children: [Icon(Icons.menu,color: Colors.white,),
                  SizedBox(width: 200,),
                  Icon(Icons.location_on,size: 20,),
                Text("Binnipete",style: CommonStyles.blackTextBoldw600(),),
                  Icon(Icons.arrow_downward,size: 20,),],),
                SizedBox(height: 20,),
              
            Container(
              height: 40,
              
              width: MediaQuery.of(context).size.width-7,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              ),
              child:
            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
         

               Text("What you are Searching for?",style: CommonStyles.blackTextBoldw600(),),
                Text("Search",style: CommonStyles.blackTextBoldw600(),)])),
                       SizedBox(height: 30,),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                         Container(
                             height: 40,
                             width: 130,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                             color: Colors.orange,),
                             
                             child: Text("FIND PROPERTY",style:CommonStyles.WhiteTextBoldw700()),
                           ),
                             Container(
                             height: 40,
                             width: 160,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                             color: Colors.orange,),
                             child: Text("POST A PROPERTY",style:CommonStyles.WhiteTextBoldw700()),
                           ),
                             ]  ),
                    
               ] ),
           
          )
            ],
          ),
          SizedBox(height: 30,),
         banner(),
    
            ]  ),
      ),
    );
  }

  Widget buildImage(String AssetImage, int index) => Container(
        color: Colors.white,
        child: Image.asset(AssetImage),
      );

}
