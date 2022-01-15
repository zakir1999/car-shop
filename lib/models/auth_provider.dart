import 'dart:convert';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  String? _token;
  DateTime? _expiryDate;
  Future<void> authSignUp(String email, String password) async {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyB_vQwRqWzNrdK-KNQ-NB3LHZUb7TYiJP0';
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    print(json.decode(response.body));
    notifyListeners();
  }

  Future<void> SignIn(String email, String password) async {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyB_vQwRqWzNrdK-KNQ-NB3LHZUb7TYiJP0';
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    //print(json.decode(response.body));
    final responseData = json.decode(response.body);
    if (responseData['error'] != null) {
      print(responseData['error']);
    }
    _token = responseData['idToken'];
    _expiryDate = DateTime.now().add(
      Duration(
          seconds: int.parse(
        responseData['expiresIn'].toString(),
      )),
    );
    // print(_token);
    // print(_expiryDate!.isAfter(DateTime.now()));
    notifyListeners();
  }

  get token {
    if (_expiryDate != null &&
        _expiryDate!.isAfter(DateTime.now()) == true &&
        _token != null) {
      return _token;
    }
  }

  bool get isAuth {
    return token != null;
  }
}
