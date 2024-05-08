import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool? isSoft;
  final bool? isLoading;
  final double? softValue;
  final bool? isBorder;
  final double? width;

  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
    this.isLoading,
    this.isSoft,
    this.softValue,
    this.isBorder, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: isBorder == true
              ? null
              : isSoft == true
                  ? AppColors.primary.withOpacity(softValue ?? .5)
                  : AppColors.primary,
          border: isBorder == true
              ? Border.all(color: AppColors.primary, width: 1.5)
              : null,
          borderRadius: BorderRadius.circular(6000),
        ),
        child: Center(
          child: isLoading == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    text('${'please_wait'.tr}...', isSoft, isBorder)
                  ],
                )
              : text(title, isSoft, isBorder),
        ),
      ),
    );
  }
}

Widget text(String title, bool? isSoft, bool? isBorder) => Text(
      title,
      style: TextStyle(
        color: isBorder == true ? AppColors.primary : isSoft == true ? Colors.white : Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
