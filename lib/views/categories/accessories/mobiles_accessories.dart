import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../../global_widgets/carousel_slider.dart';
import '../../../global_widgets/custom_app_bar.dart';
import '../../../routes/route_names.dart';
import '../../../utils/colors.dart';
import '../../exampol.dart';

class MobileAccessories extends StatefulWidget {
  const MobileAccessories({super.key});

  @override
  State<MobileAccessories> createState() => _MobileAccessoriesState();
}

class _MobileAccessoriesState extends State<MobileAccessories> {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      appBar: customAppBar(context: context),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Shop for less",style: TextStyle(fontWeight:FontWeight.w700 ,fontSize: 16),),
          ListView.builder(
            shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return
                  InkWell(
                    onTap:() {
                      Get.toNamed(RouteNames.assessoriesDatiles);},
                    child: Card(
                      color: AppColors.body,
                      child:ListTile(
                        contentPadding: EdgeInsets.zero,

                        title: Text('Mobile'),
                        trailing: Container(

                          width: 110, // Adjust the width as needed
                          child:
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [



                              Image.asset('assets/images/phone.png',
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
                      // ListTile(
                      //
                      //   title: Text("Mobile",
                      //     style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),
                      //   ),
                      //   trailing:
                      //  Row(
                      //    children: [
                      //      Text("jhj"),
                      //    ],
                      //  ),
                      //
                      //
                      // ),
                    ),
                  );
              }),
          CarouselSliderPage(),
          // CustomCardProduct(data: [],)





        ],
      ),




    );
  }
}












