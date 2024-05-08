import 'package:flutter/material.dart';

import '../../../../global_widgets/custom_app_bar.dart';
import '../../../../global_widgets/custom_field.dart';

class MobileDatiles extends StatefulWidget {
  const MobileDatiles({super.key});

  @override
  State<MobileDatiles> createState() => _MobileDatilesState();
}

class _MobileDatilesState extends State<MobileDatiles> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: customAppBar(context: context),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [


              Container(
                // decoration: BoxDecoration(
                //     color: AppColors.fieldBackground,
                //     borderRadius: BorderRadius.circular(20)
                //
                // ),
                child: TabBar(
                    dividerColor: Colors.transparent,

                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
                    indicatorColor: Colors.black,
                    indicatorWeight: 0,
                    indicator: BoxDecoration(

                      color: Colors.blue,
                      borderRadius:  BorderRadius.circular(25),
                    ),



                    tabs: [
                      Tab(child: Container(
                          width: double.maxFinite,
                          child: Center(child: Text('Chats'))),),
                      Tab(child: Container(
                          width: double.maxFinite,
                          child: Center(child: Text('Groups'))),),
                      Tab(child: Container(
                          width: double.maxFinite,
                          child: Center(child: Text('Calls'))),),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),


              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 10,
                      // itemCount: dummyData.length,
                      itemBuilder: (_, index) {
                        // final data = dummyData[index];
                        return

                          InkWell(
                            onTap: (){
                              // navigate(context, UserProfile());

                            },
                            child:
                            Container(
                              child: Text(",md,ck"),
                            )
                          );
                      }),
                  // ListView.builder(
                  //     padding: EdgeInsets.zero,
                  //     shrinkWrap: true,
                  //     primary: false,
                  //     itemCount: groupDummy.length,
                  //     itemBuilder: (_, index) {
                  //       final data = groupDummy[index];
                  //       return InkWell(
                  //         onTap: (){
                  //
                  //           navigate(context, ChatPageScreen());
                  //         },
                  //         child: ListTile(
                  //           leading: CircleAvatar(
                  //             backgroundColor: Colors.indigo,
                  //             child: Text(data['image'],
                  //               style: TextStyle(
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 20,
                  //                 color: AppColors.white,
                  //               ),),
                  //           ),
                  //           title: Text(
                  //             data['name'],
                  //             style: const TextStyle(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.w600,
                  //             ),
                  //           ),
                  //           subtitle: Text(
                  //             data['last_message'] ??
                  //                 "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                  //             maxLines: 1,
                  //             style: TextStyle(
                  //               color: AppColors.black.withOpacity(.5),
                  //             ),
                  //           ),
                  //           trailing: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.end,
                  //             children: [
                  //               Text(
                  //                 data['time'],
                  //                 style: TextStyle(
                  //                   color: Colors.black.withOpacity(.5),
                  //                   fontSize: 10,
                  //                 ),
                  //               ),
                  //               data['unread_count'] == '0' ? const SizedBox() : Container(
                  //                 decoration: BoxDecoration(
                  //                   color: AppColors.primary,
                  //                   shape: BoxShape.circle,
                  //                 ),
                  //                 child: Padding(
                  //                   padding: const EdgeInsets.all(5.0),
                  //                   child: Text(
                  //                     data['unread_count'].toString(),
                  //                     style: TextStyle(
                  //                       color: AppColors.white,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //       );
                  //     }),
                  // ListView.builder(
                  //     padding: EdgeInsets.zero,
                  //     shrinkWrap: true,
                  //     primary: false,
                  //     // itemCount: dummyData.length,
                  //     itemCount:10,
                  //     itemBuilder: (_, index) {
                  //       // final data = dummyData[index];
                  //       return
                  //         ListTile(
                  //         leading: CircleAvatar(
                  //           child:  Image.asset(data['image'],fit:BoxFit.cover,),
                  //         ),
                  //         title: Text(
                  //           data['name'],
                  //           style: const TextStyle(
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w600,
                  //           ),
                  //         ),
                  //         subtitle: Row(
                  //           children: [
                  //             Image.asset(data['call_iconq']),
                  //             Text(
                  //               data['call_time'] ??
                  //                   "Lorem Ipsum ",
                  //               maxLines: 1,
                  //               style: TextStyle(
                  //
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         trailing:
                  //         InkWell(
                  //             onTap: (){
                  //
                  //             },
                  //             child: Image.asset(data['call_icon'])),
                  //
                  //
                  //
                  //
                  //
                  //
                  //       );
                  //     }),

                ]),
              ),

            ],
          ),
        ),
        // bottomNavigationBar: const CustomNavBar(),
      ),
    );
  }
}
