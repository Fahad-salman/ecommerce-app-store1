import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/routes.dart';
import 'package:flutter_application_2/view/screen/auth/login.dart';


Map<String, Widget Function(BuildContext)> routes={
  AppRoute.login:(context) => const Login(),

};