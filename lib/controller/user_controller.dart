import 'package:appsi/data/user/user.dart';
import 'package:flutter/cupertino.dart';

class UserController extends ChangeNotifier {
  final MyUser _user = MyUser(
      userName: 'Rahmat Supriansyah',
      jobTitle: 'Mahasiswa',
      image: 'assets/images/ronaldo.jpg');

  bool _isLoggedIn = false;

  MyUser get profile => _user;
  bool get isLogin => _isLoggedIn;

  void login() {
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
