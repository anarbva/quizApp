
import 'package:test1/models/question.dart';
import 'package:test1/data/quiz.data.dart';

class QuizServices{
  int index=0;
  List<Question>questions =[];

  void init(){
  questions.addAll(questionsData);
}

  void nextQuestions(){

    if(index<questions.length-1){
      index++;
    }else{

    }
    
  }
  
  bool getCorrectAnswer(){
    return questions[index].answer;
  }

  String showQuestion(){

    return questions[index].question;
  }

  bool lastQuestion(){
   if(index==questions.length-1){
    return true;
   }else {
    return false;
   }
   
  }
  void restart(){
    index=0;
  }
}
 final QuizServices quizServices = QuizServices();
