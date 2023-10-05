import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/text_app.dart';

Widget topLogin(BuildContext context) {
  return Stack(
    children: [
      Positioned(
        top: 0,
        left: 0,
        child: Container(
          height: 187,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Center(
            child: textTitle(
              title: "Login",
              color: Colors.black,
              fontSize: 50,
            ),
          ),
        ),
      ),
    ],
  );
}
