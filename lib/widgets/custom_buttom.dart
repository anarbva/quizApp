import 'package:flutter/material.dart';
import 'package:test1/app_constants/colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Function() onPressed;
  final String text;
  
  const CustomButton({
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
    super.key});

  
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
         height: 80,
         child: ElevatedButton(
         style: ElevatedButton.styleFrom(
         backgroundColor: backgroundColor,
         shape:const  RoundedRectangleBorder(
         borderRadius: BorderRadius.zero,
        ),
      ),
          onPressed:onPressed,
          child: Text(text,
          style:const TextStyle(fontSize: 25, color: AppColors.mainColor)),
         ),
      );
  }
}