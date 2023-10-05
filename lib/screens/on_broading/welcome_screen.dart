import 'package:flutter/material.dart';
import 'package:movie_ticket_app/screens/on_broading/widget/widget_welcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/icons/icon_wellcome.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 1,
              child: RichTextWellcome(),
            ),
            Expanded(
              flex: 1,
              child: buttonWellcome(context),
            )
          ],
        ),
      ),
    );
  }
}
