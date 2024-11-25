import 'package:flutter/material.dart';
import 'package:schoolapp/components/button.dart';
import 'package:schoolapp/core/constants.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hallo',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  color: kTextWhiteColor,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      Text(
                        'Student',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: kTextWhiteColor, fontSize: 20),
                      )
                    ],
                  ),
                  sizedBox,
                  Text(
                    'Login to continue',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: kTextWhiteColor, fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: kOtherColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          sizedBox,
                          buildEmailFormField(),
                          sizedBox,
                          buildPasswordFormField(),
                          sizedBox,
                          DefaultButton(
                            onPress: () {
                              if (_formKey.currentState!.validate()) {}
                            },
                            title: 'Login',
                          ),
                          sizedBox,
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forget Password?',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        RegExp regex = RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter email';
        } else if (!regex.hasMatch(value)) {
          return 'Enter a valid email';
        }
      },
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 6) {
          return 'Password should be at least 6 characters';
        }
      },
    );
  }
}
