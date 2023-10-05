import 'package:flutter/material.dart';
import 'package:movie_ticket_app/screens/on_broading/login_screen.dart';
import 'package:movie_ticket_app/screens/on_broading/sign_up_screen.dart';

Widget RichTextWellcome() {
  return Container(
    margin: const EdgeInsets.only(left: 20, right: 20),
    child: RichText(
      text: const TextSpan(children: [
        TextSpan(
          text: "WELLCOME",
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Regular',
          ),
        ),
        TextSpan(
            text:
                "\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates porro reprehenderit iusto suscipit aperiam.",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Regular',
            )),
      ]),
      maxLines: null,
      textAlign: TextAlign.center,
    ),
  );
}

Widget buttonWellcome(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // Login button
      ElevatedButton(
        // ignore: sort_child_properties_last
        child: const Text(
          "Create an Account",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {
          navigatorButton(context, widgetPage: const SignUpScreen());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF146C94),
          minimumSize: const Size(300, 60),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),

      ElevatedButton(
        // ignore: sort_child_properties_last
        child: const Text(
          "Login",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF146C94),
          ),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: const Size(300, 60),
            side: const BorderSide(color: Color(0xFF146C94)),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
        onPressed: () {
          navigatorButton(context, widgetPage: const LoginScreen());
        },
      ),
      TextButton(
        onPressed: () {},
        child: const Text(
          "Login as Guests",
          style: TextStyle(color: Color(0xFF202660), fontSize: 15),
        ),
      )
    ],
  );
}

void navigatorButton(BuildContext context, {required Widget widgetPage}) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widgetPage));
}
