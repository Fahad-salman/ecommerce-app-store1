
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/core/funcations/utils.dart';
import 'package:flutter_application_2/core/localization/translation.dart';
import 'package:flutter_application_2/core/services/services.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter_application_2/view/screen/language.dart';
import 'package:flutter_application_2/view/screen/onboarding.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{ 

  WidgetsFlutterBinding.ensureInitialized();
  await initalServices();
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Language(),
      theme: ThemeData(
        textTheme: TextTheme(
            headline1: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 20 , color: AppColor.black),
            bodyText1: fahadstyle(
                          // height: 2,
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.4,
                        ),
        ),
        primarySwatch: Colors.blue,
      ),
      routes: routes ,
    );
  }
}

