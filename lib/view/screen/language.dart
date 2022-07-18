import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/widget/language/custombuttomlang.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose language", style: Theme.of(context).textTheme.headline1,),
            const SizedBox(height: 20,),
            CustomButtomLang(textbutton: "Ar",onPressed: (){},),
            CustomButtomLang(textbutton: "En",onPressed: (){},),
        ],),
      ),
    );
  }
}