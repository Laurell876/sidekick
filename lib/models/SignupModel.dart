class SignupModel {
  String message;

  SignupModel({this.message});

  SignupModel.fromJson(Map<String, dynamic> json) {
    message = json["message"];
  }
}