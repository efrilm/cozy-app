import 'package:cozy_app/thema.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          left: edge,
          right: edge,
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Sign In',
              style: blackTextStyle.copyWith(
                fontSize: 26,
              ),
            ),
          ],
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          left: edge,
        ),
        child: Text(
          'Les\'t Sign in with your account',
          style: greyTextStyle.copyWith(),
        ),
      );
    }

    Widget emailTextField() {
      return Container(
        child: Column(
          children: [
            Text(
              'Email',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              decoration: BoxDecoration(),
              child: TextFormField(
                style: blackTextStyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'example@gmail.com',
                  hintStyle: greyTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            subtitle(),
            emailTextField(),
          ],
        ),
      ),
    );
  }
}
