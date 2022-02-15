import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milkiyat/CommonWidgets/common_styles.dart';

class scrollpics extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          TitleWithSeeAll(text: "Top Picks",),
        RecommendHouse(),
        TitleWithSeeAll(text: "Latest"),
        RecommendHouse(),
        ],
      );
}

class RecommendHouse extends StatelessWidget {
  const RecommendHouse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          RecommendHouseCard(
              image: "images/house1.jpg",
              title: "36 Malra Commercial Land",
            
              price: 450,
              press: () {}),
              
          RecommendHouseCard(
              image: "images/house2.jpg",
              title: "House at Doctors Colony.....",
             
              price: 470,
              press: () {}),
               
          RecommendHouseCard(
              image: "images/house3.jpg",
              title: "36 Malra Commercial Land",
           
              price: 490,
              press: () {}),
              
          RecommendHouseCard(
              image: "images/house4.jpg",
              title: "House at Doctors Colony.....",
            
              price: 400,
              press: () {})
              
        ]
          ),
    );
  }
}

class RecommendHouseCard extends StatelessWidget {
  const RecommendHouseCard({
    Key? key,
    required this.image,
    required this.title,
    
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title ;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: 20,
          top: 20 / 2,
          bottom: 20 * 2.5),
      width: size.width * 0.5,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(20 / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                 
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.orange.withOpacity(0.23),
                    )
                  ]
              ),
            child: Column(
                children: <Widget>[
                  Row(
                    children: [
                    Text("₹ $price Crore",
                    style: CommonStyles.blackTextBoldw600(),),
                    SizedBox(width: 60,),
                    Icon(Icons.favorite_border_outlined,size: 20,),
                  
                  ],),
                    Text("${title}",  style: Theme.of(context).textTheme.button,),
                    Row(children: [
                      Container(
                        height: 20,
                        width: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.3),),
                        child: Text("40 meters"),
                      ),
                      SizedBox(width: 10,),
                      Container(
                          height: 20,
                        width: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.3),),
                        child: Text("30 meters"),
                      ),
                    ],),
                    Row(children: [
                      Icon(Icons.location_on,size: 20,),
                      Text("Harwan")
                    ],)
                ]
                   
              ),
            ),
              )
        ],
      ),
    );
  }
}






class TitleWithSeeAll extends StatelessWidget {
  const TitleWithSeeAll({
    Key? key, required this.text,
  }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Latest",
            style: CommonStyles.blackTextBoldw600(),
          ),
          Row(
            children: [
              Text(
                "SEE ALL",
                style: CommonStyles.OrangeTextW600(),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.orange[900],
                size: 15,
              )
            ],
          )
        ],
      ),
    );
  }
}
