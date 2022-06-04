class FeedbackForm {
  String questions;
  String answer;
  String image;
  String imageshow;




  FeedbackForm(this.questions, this.answer,this.image,this.imageshow );

  factory FeedbackForm.fromJson(dynamic json) {
    return FeedbackForm(
        "${json['questions']}",
        "${json['answer']}",
      "${json['image']}",
      "${json['imageshow']}",


    );
  }

  // Method to make GET parameters.
  Map toJson() => {
    'questions': questions,
    'answer': answer,
    'image': image,
    'imageshow': imageshow,


  };
}