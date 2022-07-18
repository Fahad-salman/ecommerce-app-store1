import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';

class CustomButtomLang extends StatelessWidget {
  final String textbutton ;
  final void Function()? onPressed;
  const CustomButtomLang({Key? key, required this.textbutton, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColor.PrimaryColor,
        textColor: AppColor.white,
        child:  Text(
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
