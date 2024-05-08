import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../global_widgets/custom_app_bar.dart';
import '../../../../routes/route_names.dart';
import '../../../../utils/colors.dart';

class AssessoriesPrize extends StatefulWidget {
  const AssessoriesPrize({super.key});

  @override
  State<AssessoriesPrize> createState() => _AssessoriesPrizeState();
}

class _AssessoriesPrizeState extends State<AssessoriesPrize> {
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
                children: List.generate(
                  100,
                      (index) =>
                          InkWell(
                            onTap:() {
                              Get.toNamed(RouteNames.mobilePrize);},
                            child: Card(
                                color: AppColors.body,
                                child:Padding(
                                  padding: const EdgeInsets.only(left: 8,right: 8,top: 12,bottom: 12),
                                  child: Row(

                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [



                                      Text("A055",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600),),
                                      Text("4/64GB",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600)),
                                      Row(children: [
                                        Text("89&",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600)),
                                        SizedBox(width: 8,),
                                        Icon(Icons.arrow_forward_ios_sharp),

                                      ],)

                                    ],),
                                )


                            ),
                          ),
                ),
              ),
            ),








          ],
        ),
      ),







    );
  }
}
