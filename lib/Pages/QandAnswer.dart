class QandAnswer {
  var question;
  var id;
  var answer;
  QandAnswer({this.answer, this.id, this.question});
}

List<QandAnswer> qandanswerlists = [
  QandAnswer(
      question: "Blue eyes are newer to the human race than pottery.",
      answer: "true",
      id: 1),
  QandAnswer(
      question: "50 Cent and Charlie Chaplin were alive at the same time.",
      answer: "true",
      id: 2),
  QandAnswer(
      question: "Michigan is larger than Great Britain.",
      answer: "true",
      id: 3),
  QandAnswer(
      question: "Cumulus clouds weigh anywhere from 15 to 30 pounds.",
      answer: "false",
      id: 4),
  QandAnswer(
      question: "There are 14 bones in a human foot.", answer: "false", id: 5),
  QandAnswer(
      question: "Matches were invented before lighters.",
      answer: "false",
      id: 6),
  QandAnswer(
      question:
          """The population of California is larger than the entire population of Canada.""",
      answer: "true",
      id: 7),
  QandAnswer(
      question: """The world's population tripled in the last 50 years.""",
      answer: "false",
      id: 8),
  QandAnswer(
      question: """

Two 12-inch pizzas have more pizza than a 17-inch pizza.""",
      answer: "false",
      id: 9),
  QandAnswer(
      question: "Hot and cold water sound the same when you pour them.",
      answer: "false",
      id: 10),
  QandAnswer(
      question: """More people are killed each year by cows than by sharks.""",
      answer: "true",
      id: 11),
  QandAnswer(
      question:
          "In school, Albert Einstein failed most of the subjects, except for physics and math.",
      answer: "true",
      id: 12),
  QandAnswer(
      question:
          """The first song ever sung in the space was “Happy Birthday.”""",
      answer: "true",
      id: 13),
  QandAnswer(
      question:
          "The first country in the world to use postcards was the United States of America.",
      answer: "false",
      id: 14),
  QandAnswer(
      question:
          """A male canary tends to have a better singing voice than a female canary.""",
      answer: "true",
      id: 15),
  QandAnswer(
      question: """Tea contains more caffeine than coffee and soda.""",
      answer: "false",
      id: 16),
  QandAnswer(question: "Dogs have an appendix.", answer: "false", id: 17),
  QandAnswer(
      question: "Mice have more bones than humans.", answer: "true", id: 18),
  QandAnswer(
      question: "The first product with a bar code was chewing gum.",
      answer: "true",
      id: 19),
  QandAnswer(
      question:
          """The star is the most common symbol used in all national flags around the world.""",
      answer: "true",
      id: 20),
  QandAnswer(
      question:
          """Black is the most commonly used colour in all national flags around the world.""",
      answer: "false",
      id: 21),
  QandAnswer(
      question: "The capital of Australia is Sydney.", answer: "false", id: 22),
];
