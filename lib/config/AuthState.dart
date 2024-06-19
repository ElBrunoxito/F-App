import 'package:flutter/material.dart';

class AuthState extends ChangeNotifier {
  late String _userRole;
  late String _authToken;


  String get useRole => _userRole;
  String get authToken => _authToken;

  

  void setUserRole(String role) {
    _userRole = role;
    notifyListeners();
  }

  void setAuthToken(String token) {
    _authToken = token;
    notifyListeners();
  }

  
}
