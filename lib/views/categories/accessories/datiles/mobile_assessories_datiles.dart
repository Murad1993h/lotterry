import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../global_widgets/carousel_slider.dart';
import '../../../../global_widgets/custom_app_bar.dart';
import '../../../../routes/route_names.dart';
import '../../../../utils/colors.dart';

class AssessoriesDatiles extends StatefulWidget {
  const AssessoriesDatiles({super.key});

  @override
  State<AssessoriesDatiles> createState() => _AssessoriesDatilesState();
}

class _AssessoriesDatilesState extends State<AssessoriesDatiles> {
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
                3,
                    (index) =>
                        InkWell(
                          onTap:() {
                            Get.toNamed(RouteNames.brandAssessories);},
                          child: Card(
                            color: AppColors.body,
                            child:ListTile(
                              contentPadding: EdgeInsets.zero,

                              title: Text('Android'),
                              trailing: Container(

                                width: 110, // Adjust the width as needed
                                child:
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [



                                    Image.asset('assets/images/android.png',
                                      // fit: BoxFit.cover,
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.arrow_forward_ios_sharp),
                                    // SvgPicture.asset(
                                    //     'assets/svg/scarch.svg',width: 25,height: 25,
                                    //     semanticsLabel: 'Acme Logo'
                                    // ),
                                  ],
                                ),
                              ),
                            ),

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
