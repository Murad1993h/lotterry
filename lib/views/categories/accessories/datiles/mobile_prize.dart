import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../global_widgets/custom_app_bar.dart';
import '../../../../routes/route_names.dart';
import '../../../../utils/colors.dart';
import '../../../exampol.dart';

class MobilePrize extends StatefulWidget {
  const MobilePrize({super.key});

  @override
  State<MobilePrize> createState() => _MobilePrizeState();
}

class _MobilePrizeState extends State<MobilePrize> {
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        appBar: customAppBar(context: context),
        body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SingleChildScrollView(
              child: Column(
                children: List.generate(
                  100,
                      (index) =>
                      InkWell(
                        onTap:() {
                          Get.toNamed(RouteNames.mobileDatiles);},
                        child: Card(
                            color: AppColors.body,
                            child:Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8,),
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [



                                  Row(
                                    children: [
                                      // SvgPicture.asset(
                                      //
                                      //   'assets/svg/android.svg',
                                      //
                                      //
                                      //
                                      // ),

                                      Image.asset('assets/images/mobile1.png',
                                        // fit: BoxFit.cover,
                                      ),
                                      const Text("A055",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600),),
                                    ],
                                  ),
                                  const Text("4/64GB",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600)),
                                  const Row(children: [
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

            // CarouselSliderPage(),
            // CustomCardProduct(data: [],)





          ],
        ),




      );



  }
}
