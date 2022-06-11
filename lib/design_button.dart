import 'package:different_kind_of_button/category.dart';
import 'package:different_kind_of_button/notes.dart';
import 'package:different_kind_of_button/qiuz_of_king.dart';
import 'package:different_kind_of_button/saved_data.dart';
import 'package:different_kind_of_button/todo.dart';
import 'package:flutter/material.dart';

class DesignButton extends StatelessWidget {
  const DesignButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SavedData()),
            ),
            text: 'ذخیره اطلاعات',
            textColor: Colors.white,
            color: const Color(0xff00126d),
          ),
          MyButton(
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Category()),
            ),
            text: 'دسته بندی',
            textColor: const Color(0xff00126d),
            color: Colors.white,
            shapeButton: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xff00126d), width: 1),
            ),
          ),
          MyButton(
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Todo()),
            ),
            text: 'TO DO گرافیک',
            textColor: Colors.white,
            color: const Color(0xff00126d),
            shapeButton:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          MyButton(
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const QuizOfKing()),
            ),
            text: 'Quiz of king',
            textColor: const Color(0xff00126d),
            color: Colors.white,
            shapeButton: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(color: Color(0xff00126d), width: 1),
            ),
          ),
          MyButton(
            onPress: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Notes()),
            ),
            text: 'یادداشت ها',
            textColor: Colors.white,
            color: const Color(0xff00126d),
            shapeButton: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              side: BorderSide(color: Color(0xff00126d), width: 1),
            ),
          ),
          MyButton(
            onPress: () => null,
            text: 'انتخاب کنید',
            textColor: const Color(0xff00126d),
            color: Colors.white,
            shapeButton: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              side: BorderSide(color: Color(0xff00126d), width: 1),
            ),
          ),
        ],
      ),
    ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      this.shapeButton,
      required this.textColor,
      required this.color,
      required this.onPress,
      required this.text})
      : super(key: key);

  final ShapeBorder? shapeButton;
  final Color? color;
  final Color? textColor;
  final void Function()? onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: MaterialButton(
        onPressed: onPress,
        minWidth: 20,
        shape: shapeButton,
        color: color,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: textColor),
        ),
      ),
    );
  }
}
