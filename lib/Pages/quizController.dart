import 'dart:async';
import 'package:firstpractice/Pages/QandAnswer.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  var questionNumber = 0.obs;
  var myiconlists = [].obs;
  var totaltruenumber = 0.obs;
  var ghori = 30.obs;
  Timer _timer;
  var isButtonClicked = false.obs;

  @override
  void onInit() {
    countTimer();
    super.onInit();
  }

  countTimer() {
    const onesec = const Duration(seconds: 1);
    _timer = Timer.periodic(onesec, (Timer timer) {
      if (ghori.value > 0) {
        if (isButtonClicked.value) {
          ghori.value = 30;
          ghori.value--;

          isButtonClicked.value = false;
        } else {
          ghori.value--;
        }
      } else if (ghori.value == 0) {
        ghori.value = 30;
        ghori.value--;
        questionNumber.value = questionNumber.value + 1;
        myiconlists.value.add("0");
      } else {
        ghori.value = 30;
        _timer.cancel();
      }
    });
  }

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
    ghori.value = 30;

    myiconlists.value = [];
  }
}

class TrueFalse {
  var ansertrue;
  var answerfalse;
  TrueFalse({this.ansertrue, this.answerfalse});
}
