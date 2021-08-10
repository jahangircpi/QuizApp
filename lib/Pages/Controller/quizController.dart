import 'package:firstpractice/Pages/Model/QandAnswer.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  var questionNumber = 0.obs;
  var myiconlists = [].obs;
  var totaltruenumber = 0.obs;

  questionNumberfunction() {
    if (questionNumber.value < qandanswerlists.length) {
      questionNumber.value = questionNumber.value + 1;
    } else {}
  }

  count() {
    Map<String, int> count = {};
    myiconlists.forEach(
        (i) => count['$i'] = count.containsKey('$i') ? count['$i'] + 1 : 1);
    print('${count.toString()}');
  }

  gettingthetrue(correct) {
    if (qandanswerlists[questionNumber.value - 1].answer == correct) {
      myiconlists.value.add("1");
      Map<String, int> count = {};
      myiconlists.forEach((i) {
        count[i] = count.containsKey(i) ? count['$i'] + 1 : 1;
        totaltruenumber.value = count[i];

        print(count[i].toString());
      });
      // print('${count.toString()}');

      // print(totaltruenumber.value.length);
    } else {
      myiconlists.value.add("0");
    }
  }

  reseteveryting() {
    questionNumber.value = 0;

    myiconlists.value = [];
  }
}

class TrueFalse {
  var ansertrue;
  var answerfalse;
  TrueFalse({this.ansertrue, this.answerfalse});
}
