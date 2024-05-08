import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../global_widgets/carousel_slider.dart';
import '../../../../global_widgets/custom_app_bar.dart';
import '../../../../routes/route_names.dart';
import '../../../../utils/colors.dart';

class BrandAssessories extends StatefulWidget {
  const BrandAssessories({super.key});

  @override
  State<BrandAssessories> createState() => _BrandAssessoriesState();
}

class _BrandAssessoriesState extends State<BrandAssessories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        5,
                            (index) =>
                                InkWell(
                                  onTap:() {
                                    Get.toNamed(RouteNames.assessoriesPrize);},
                                  child: const Card(
                                      color: AppColors.body,
                                      child:Padding(
                                          padding: EdgeInsets.only(left: 8,right: 8,top: 12,bottom: 12),
                                          child: Row(

                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Samsung",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600),),

                                              Icon(Icons.arrow_forward_ios_sharp),






                                            ],)


                                      )


                                  ),
                                ),
                      ),

                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3),
                      child: Column(
                        children: [
                        Image.asset('assets/images/freez.png',
                        fit:BoxFit.cover,
                        ),
                          Container(
                            color: Colors.yellow,
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Samsung Galaxy"),
                                Text("S24 ultra 8/256GB"),
                                Text("1,250 USD"),
                                Text("4.2"),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  )










                ],
              ),
            ),
        
        
        
        
        
        
          ],
        ),
      ),




    );
  }
}
