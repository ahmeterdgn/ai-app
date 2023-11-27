import 'package:ai/const.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ai/model/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Auth _auth = Auth();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLogin = true;
  bool _isLoading = false;
  String errorText = '';
  Future<void> signInWithEmailAndPassword() async {
    try {
      setState(() {
        _isLoading = true;
      });
      _auth.signInWithEmailAndPassword(
        _emailController.text,
        _passwordController.text,
      );
      setState(() {
        _isLoading = false;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        _isLoading = false;
        error('Error: ${e.message}');
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      setState(() {
        _isLoading = true;
      });
      _auth.createUserWithEmailAndPassword(
        _emailController.text,
        _passwordController.text,
      );
      setState(() {
        _isLoading = false;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        _isLoading = false;
        error('Error: ${e.message}');
      });
    }
  }

  error(text) {
    setState(() {
      _isLoading = false;
      errorText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefColor.bgColor,
      body: Stack(
        children: [
          Positioned(
              child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.contain,
              ),
            ),
          )),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: DefColor.primary.withOpacity(0.1),
                      spreadRadius: 50,
                      blurRadius: 100,
                      offset: const Offset(9, 30),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/robot.png',
                  width: 150,
                  height: 100,
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Container(
                  key: ValueKey<bool>(_isLogin),
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Text(
                    _isLogin ? 'Login' : 'Sign Up',
                    style: TextStyle(
                      color: DefColor.colorLight,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Text(
                  _isLogin ? 'Login to your account' : 'Create a new account',
                  key: ValueKey<String>(_isLogin ? 'login' : 'signup'),
                  style: TextStyle(
                    color: DefColor.colorLight,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(
                    color: DefColor.colorLight,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: DefColor.colorLight,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: DefColor.colorLight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: DefColor.colorLight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(
                    color: DefColor.colorLight,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: DefColor.colorLight,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: DefColor.colorLight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: DefColor.colorLight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  errorText,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password?'),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _isLogin = !_isLogin;
                        });
                      },
                      child: Text(
                        _isLogin ? 'Sign Up' : 'Login',
                        style: TextStyle(
                          color: DefColor.colorLight,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: _isLoading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          key: ValueKey<bool>(_isLogin),
                          onPressed: () async {
                            setState(() {
                              _isLoading = true;
                            });
                            if (_isLogin) {
                              await signInWithEmailAndPassword();
                            } else {
                              await createUserWithEmailAndPassword();
                            }
                            setState(() {
                              _isLoading = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: DefColor.colorLight,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.3,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02,
                            ),
                          ),
                          child: Text(
                            _isLogin ? 'Login' : 'Sign Up',
                            style: TextStyle(
                              color: DefColor.colorDark,
                              fontSize: 20,
                            ),
                          ),
                        ),
                  transitionBuilder: (child, animation) => FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
