import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CarouselSliderPage extends StatefulWidget {

  @override
  _CarouselSliderPageState createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
  int pageIndex=0;

  List<Widget> _demo=[
    Container(height: 300,child:  Image.asset('assets/images/phone.png',
      // fit: BoxFit.cover,
    ),
    ),


    Container(height: 300,color: Colors.blue),
    Container(height: 300,child:  Image.asset('assets/images/phone.png',
      // fit: BoxFit.cover,
    ),
    ),
    Container(height: 300,child:  Image.asset('assets/images/freez.png',
      // fit: BoxFit.cover,
    ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,

          width: double.infinity,
          child: PageView(
            children: _demo,

            onPageChanged: (index){
              setState(() {
                pageIndex=index;
              });
            },
          ),
        ),
        SizedBox(height: 20,),
        CarouselIndicator(
          color: Colors.black12,
          count: _demo.length,
          index: pageIndex,
        ),
      ],
    );
  }
}