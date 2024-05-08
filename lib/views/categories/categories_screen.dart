import 'package:click/routes/route_names.dart';
import 'package:click/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../../core/services/api_services.dart';
import '../../global_widgets/custom_app_bar.dart';
import '../../utils/assets_manager.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context: context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'shop'.tr,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      InkWell(
                        onTap:() {
                          Get.toNamed(RouteNames.mobileAccessories);},
                        child:
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 3,bottom: 3),
                            child: Column(
                              children: [
                              Image.asset('assets/images/smartphone.png',
                              fit: BoxFit.cover,
                              ),
                                Container(
                                  color: AppColors.product,
                                  child: Text(
                                    "MOBILES & ACCESSORIES",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 10),
                                  ),
                                )

                              ],
                            ),
                          ),
                        )

                      );
                  }),
            ),

            // ListView.separated(
            //     itemBuilder: (_, index){
            //       return Padding(
            //         padding: const EdgeInsets.all(5),
            //         child: Card(
            //           child: ListTile(
            //             title: Text("post api test 1st time ",
            //               style: TextStyle(color: Colors.red),
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //     separatorBuilder: (_, index){
            //       return SizedBox(height: 10,);
            //
            //     },
            //     itemCount: 10),

            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFFFFF), // white
                    Color(0xFFE6CFFD), // pastel purple
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Text(
                "Locate/Order & Ask for any Items/Services or Stores near you",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
            ),

            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            // border: Border.all(
                            //   color: Colors.black,
                            //   width: 2.0,
                            // ),

                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFFFFF), // white
                                Color(0xFFE6CFFD), // pastel purple
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              tileMode: TileMode.mirror,
                            ),
                          ),
                          child: Text(
                            "LEBANON FOR ALL",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
                          )),
                      InkWell(
                        onTap: (){
                          Get.toNamed(RouteNames.mobileAccessories);
                        },
                        child: Text(
                          "Show All",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                    Container(
                      color: AppColors.product,
                      child: Column(
                        children: [
                          Image.asset('assets/images/smartphone.png',
                             // fit: BoxFit.cover,
                          ),
                          // Text('$index'),
                          Container(
                            color: AppColors.product,
                            child: Text(
                              "MOBILES & ACCESSORIES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                    ],
                  )

                ],
              ),
            )
          ],
        ));
  }
}
