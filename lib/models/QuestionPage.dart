class QuestionPage{

 const QuestionPage({ required this.text,  required this.answers}); 

  final String text; 
  final List<String> answers;

  List <String> get shuffledAnswers{
    final shuffledList= List.of(answers); // to make a copy of a list 
    shuffledList.shuffle(); // shuffled is void so we have to make a var in this case it's "shuffledList" and then use shuffle() than return the var
    return shuffledList;
  }

}
