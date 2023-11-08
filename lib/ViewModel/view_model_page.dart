import 'package:mvvm_app/Model/model_page.dart';

class ViewModelPage  {
  var user = User('');

  String get name => user.name;

  void setName(String newName) {
    user.name = newName;
  }
}
