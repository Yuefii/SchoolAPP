import 'package:flutter/material.dart';
import 'package:schoolapp/core/constants.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  SizedBox(
                    height: kDefaultPadding / 6,
                  ),
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
                      child: Column(
                        children: [
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          // Email
                          TextFormField(
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: kTextBlackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Email',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              isDense: true,
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: kTextBlackColor,
                                height: 0.5,
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: kTextBlackColor,
                                height: 0.5,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kTextLightColor,
                                  width: 0.7,
                                ),
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kTextLightColor,
                                ),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kTextLightColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kErrorBorderColor,
                                  width: 1.2,
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kErrorBorderColor,
                                  width: 1.2,
                                ),
                              ),
                            ),
                            validator: (value) {
                              RegExp regex = RegExp(emailPattern);
                              if (value == null || value.isEmpty) {
                                return 'Please enter email';
                              } else if (!regex.hasMatch(value)) {
                                return 'Enter a valid email';
                              }
                            },
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          // Password
                          TextFormField(
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
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
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
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: kTextBlackColor,
                                height: 0.5,
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: kTextBlackColor,
                                height: 0.5,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kTextLightColor,
                                  width: 0.7,
                                ),
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kTextLightColor,
                                ),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kTextLightColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kErrorBorderColor,
                                  width: 1.2,
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kErrorBorderColor,
                                  width: 1.2,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.length < 6) {
                                return 'Password should be at least 6 characters';
                              }
                            },
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  kPrimaryColor,
                                  kSecondaryColor,
                                ],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(0.5, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp,
                              ),
                              borderRadius: BorderRadius.circular(
                                kDefaultPadding,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Login',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: kTextWhiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
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
}
