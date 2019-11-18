class LoginModel {
   String message;

  LoginModel(this.message);

  LoginModel.fromJson(Map<String, dynamic> json) { //takes in a map as a parameter, the default/preferred value of the map is a string which is a json
    message= json['message'];
  }

  //Map<String, dynamic> toJson() => {'userName': userName, 'token': token};
}
