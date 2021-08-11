import 'package:firstpractice/Pages/quizController.dart';
import 'package:firstpractice/Pages/QandAnswer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageQuiz extends StatelessWidget {
  final controller = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0XFF00796B),
        body: Obx(
          () => SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    controller.questionNumber.value < qandanswerlists.length
                        ? Center(
                            child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Remainig Sec : ',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: controller.ghori.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 25),
                                ),
                              ],
                            ),
                          ))
                        : Container(),
                  ],
                ),
                controller.questionNumber.value < qandanswerlists.length
                    ? Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [],
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.2,
                            // color: Colors.red,
                            child: Center(
                                child: Text(
                              qandanswerlists[controller.questionNumber.value]
                                  .question,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                          ),
                          SizedBox(
                            height: size.height * 0.2,
                          ),
                          InkWell(
                              onTap: () {
                                controller.questionNumberfunction();
                                controller.gettingthetrue("true");
                                // controller.countTimer();
                                controller.isButtonClicked.value = true;
                              },
                              child: Container(
                                width: size.width,
                                height: size.height * 0.07,
                                color: Colors.green.withAlpha(232),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(
                                    "True",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              )),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          InkWell(
                              onTap: () {
                                controller.questionNumberfunction();
                                controller.gettingthetrue("false");
                                controller.isButtonClicked.value = true;
                              },
                              child: Container(
                                width: size.width,
                                height: size.height * 0.07,
                                color: Color(0xFFFF4081),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(
                                    "False",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              )),
                          Spacer(),
                        ],
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.35,
                          ),
                          Container(
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Total Corrected Answer : ${controller.totaltruenumber.value}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                  Text(
                                    "Total Questions : ${controller.myiconlists.length.toString()}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.30,
                          ),
                          InkWell(
                            onTap: () {
                              controller.reseteveryting();
                            },
                            child: Container(
                              width: size.width * 0.4,
                              color: Color(0xFFFF4081),
                              height: size.height * 0.05,
                              child: Center(
                                child: Text(
                                  "Reset",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                Positioned(
                    bottom: 0,
                    child: Row(
                        children: List.generate(
                            controller.myiconlists.value.length,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      if (controller.myiconlists.value[index] ==
                                          "0")
                                        Icon(
                                          Icons.dnd_forwardslash,
                                          color: Colors.yellow,
                                          size: 14,
                                        ),
                                      if (controller.myiconlists.value[index] ==
                                          "1")
                                        Icon(
                                          Icons.done_outlined,
                                          color: Colors.greenAccent,
                                          size: 14,
                                        ),
                                    ],
                                  ),
                                ))))
              ],
            ),
          )),
        ));
  }
}
