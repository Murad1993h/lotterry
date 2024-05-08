import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_manager.dart';
import '../utils/colors.dart';

PreferredSizeWidget customAppBar({
  required BuildContext context,
  void Function()? onTap,
  String? title,
}) {
  return AppBar(
    shape: ContinuousRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30.0), // adjust as needed
        bottomRight: Radius.circular(30.0), // adjust as needed
      ),
    ),
    backgroundColor:AppColors.primary,
    automaticallyImplyLeading: false,
    title: InkWell(
      onTap: onTap ?? () {
        Navigator.pop(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(

            color: AppColors.primary,
              shape: BoxShape.circle,
          ),

            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_outlined,size: 20,
                    color: AppColors.body,
                  ),
                  SizedBox(width: 8,),
              SvgPicture.asset(
                  'assets/svg/logo1.svg',
                  semanticsLabel: 'Acme Logo'
              ),



                ],
              ),
            ),
          ),
          Text(title ?? '',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),),

          Row(
            children: [


              SvgPicture.asset(
                  'assets/svg/scarch.svg',width: 25,height: 25,
                  semanticsLabel: 'Acme Logo'
              ),
              SizedBox(width: 8,),
              SvgPicture.asset(
                  'assets/svg/shop.svg',width: 25,height: 25,
                  semanticsLabel: 'Acme Logo'
              ),
            ],
          ),


        ],
      ),
    ),
  );
}




