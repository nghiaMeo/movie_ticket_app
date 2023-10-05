import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/text_app.dart';
import 'package:movie_ticket_app/screens/on_broading/sign_up_screen.dart';
import 'package:movie_ticket_app/screens/on_broading/widget/widget_login.dart';
import 'package:movie_ticket_app/screens/on_broading/widget/widget_welcome.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool _obscureText = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: topLogin(context),
            ),
            Expanded(
                flex: 1,
                child: Image.asset(
                  "assets/icons/login_man.png",
                  fit: BoxFit.contain,
                )),
            Expanded(flex: 3, child: formLogin(context))
          ],
        ),
      ),
    );
  }

  Widget formLogin(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            alignment: Alignment.bottomLeft,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            margin: const EdgeInsets.only(top: 50, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: togglePasswordVisibility,
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: _obscureText ? Colors.grey : Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Container(
                      child: textTitle(
                        title: "Remember Me",
                        color: const Color(0xFF514A4A),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      navigatorButton(context,
                          widgetPage: const SignUpScreen());
                    },
                    child: textTitle(
                      title: "Forgot Password ?",
                      color: const Color(0xFF202660),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
