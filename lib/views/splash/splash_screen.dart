import 'package:click/global_widgets/custom_button.dart';
import 'package:click/global_widgets/custom_field.dart';
import 'package:click/utils/assets_manager.dart';
import 'package:click/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomField(
                hintText: '',
                label: "Receivable Amount",
                backgroundColor: AppColors.secondary,
              ),
              const CustomField(
                hintText: 'Enter Name',
                label: "Receiver's First Name*",
              ),
              const CustomField(
                hintText: 'Enter Name',
                label: "Receiver's Last Name*",
              ),
              CustomField(
                hintText: '1234567890',
                label: "Receiver's Phone Number*",
                trailingPath: SvgManager.phone,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomButton(
                title: 'Request',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomButton(
                title: 'Request',
                isBorder: true,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                title: 'Proceed',
                width: MediaQuery.sizeOf(context).width * .5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
