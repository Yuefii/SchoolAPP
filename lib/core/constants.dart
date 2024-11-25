import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFF10b981);
const Color kSecondaryColor = Color.fromARGB(255, 6, 168, 114);
const Color kTextBlackColor = Color(0xFF3f3f46);
const Color kTextWhiteColor = Color(0xFFfafafa);
const Color kContainerColor = Color(0xFF737373);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFe11d48);
const Color kOtherColor = Color(0xFFfafafa);

const kDefaultPadding = 20.0;
const sizedBox = SizedBox(height: kDefaultPadding);

const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
