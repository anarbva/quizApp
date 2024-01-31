
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/app_constants/colors/app_colors.dart';
import 'package:test1/providers/quiz_services.providers.dart';
import 'package:test1/widgets/custom_buttom.dart';

class BrainPage extends StatelessWidget {
  const BrainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          child: Consumer(
            builder: (context, ref, child){
            final quizProvider=ref.watch(quizServicesNotifiersProvider);
           
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            Expanded(
               child: Center(
                 child:  Text(
                  quizProvider.question,
                    style: const TextStyle(fontSize: 28, color: AppColors.mainColor),
                    textAlign: TextAlign.center,),
               ),
             ),
              CustomButton(
                backgroundColor: AppColors.checkColor,
                 onPressed: (){
                 ref.read(quizServicesNotifiersProvider.notifier).userClicked(
                  usersAnswer: true, context: context);
                 },
                  text: 'true'.toUpperCase(),
                  ),
              const SizedBox(height: 18),
                CustomButton(
                  backgroundColor: AppColors.closeColor,
                   onPressed: (){
                    ref.read(quizServicesNotifiersProvider.notifier).userClicked(
                      usersAnswer: true,
                       context: context);
                   }, 
                   text: 'false'.toUpperCase(),
                   ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 8.0),
                   child: Row(
                    children:quizProvider.icons ,
                   ),
                 )
              ],
            );
            }
          ),
        ),
      ),
    );
  }
  
  
  
 

}

