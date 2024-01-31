import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test1/app_constants/colors/app_colors.dart';
import 'package:test1/models/client_quiz_model.dart';

import 'package:test1/services/quiz_services.dart';
import 'package:test1/widgets/custom_dialog.dart';

part 'quiz_services.providers.g.dart';

@riverpod
class QuizServicesNotifiers extends _$QuizServicesNotifiers{
  QuizServices quizServices= QuizServices();
  List<Widget>icons = [];
  @override
  ClientQuizModel build(){
    quizServices.init();
    
    return ClientQuizModel(
      icons: icons,  
      question: quizServices.showQuestion(),
    );
  
  }

  
  ClientQuizModel setState(){
    return ClientQuizModel(
      icons: icons,
     question: quizServices.showQuestion(),
     );
  }

  void userClicked({
    required bool usersAnswer,
    required BuildContext context 
    }){
    bool lastQuestion = quizServices.lastQuestion();
    bool correctAnswer = quizServices.getCorrectAnswer();
  
    icons.add(buildIcon(
     usersAnswer == correctAnswer ? Icons.check : Icons.close,
     usersAnswer == correctAnswer ? AppColors.checkColor : AppColors.closeColor,

        ) );
        if(lastQuestion){
           icons.clear();
           quizServices.restart();
      
         showCustomDialog(context, () {
          restart(context);
          });
        }else{
          quizServices.nextQuestions();
        }
        state = setState();
    }

    void restart( BuildContext context){
      Navigator.pop(context);   
    }
  
  
     Widget buildIcon(IconData icon,Color color ){
    return  Icon(icon,
      color: color,
      size: 30,
      );
     }   
}