class QuizQuestion {
  final String _question;
  final List<String> _answers;

  const QuizQuestion({required String question, required List<String> answers})
      : _answers = answers,
        _question = question;

  String get question {
    return _question;
  }

  List<String> get answers {
    return _answers;
  }

  List<String> get shuffledAnswers {
    final shuffledAnswers = List.of(_answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
