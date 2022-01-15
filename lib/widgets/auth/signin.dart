import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/auth_provider.dart';

class AuthSignIn extends StatefulWidget {
  const AuthSignIn({Key? key}) : super(key: key);

  @override
  State<AuthSignIn> createState() => _AuthSignInState();
}

class _AuthSignInState extends State<AuthSignIn> {
  final _keyForm = GlobalKey<FormState>();

  final Map<String, String> _signInAuth = {
    'email': '',
    'password': '',
  };

  Future<void> signIn() async {
    final validate = _keyForm.currentState!.validate();
    if (!validate) {
      return;
    }
    _keyForm.currentState!.save();
    await Provider.of<AuthProvider>(context, listen: false).SignIn(
      _signInAuth['email'].toString(),
      _signInAuth['password'].toString(),
    );
    if (Provider.of<AuthProvider>(context, listen: false).isAuth == true) {
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _keyForm,
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _signInAuth['email'] = newValue.toString();
                    },
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length <= 6 && value.isEmpty) {
                        return 'password min length 6';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _signInAuth['password'] = newValue.toString();
                    },
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        primary: Colors.white,
                        fixedSize: Size(150, 50)),
                    onPressed: signIn,
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Not a member yet ?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            letterSpacing: 1,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/');
                          },
                          child: const Text(
                            'sign-up',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              letterSpacing: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
