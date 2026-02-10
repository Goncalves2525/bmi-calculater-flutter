import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const BottomButton({
    super.key,
    required this.onTap,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kbottomContainerHeight,
        child: Center(child: Text(buttonTitle, style: klargeButtonTextStyle)),
      ),
    );
  }
}
