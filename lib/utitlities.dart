
import 'package:flutter/material.dart';

class FlatBtn extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final Color? color;
  final IconData? leading;
  final FontWeight? fontWeight;
  final onPress;
  const FlatBtn(
      {Key? key,
      required this.label,
      this.leading,
      this.labelColor,
      this.color,
      this.fontWeight,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: color,
          
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              offset: Offset(1, 2),
              color: Colors.blueGrey,
                blurRadius: .4, spreadRadius: 2, blurStyle: BlurStyle.normal)
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: labelColor, fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}