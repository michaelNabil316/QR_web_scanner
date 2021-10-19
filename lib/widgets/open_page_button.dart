import 'package:flutter/material.dart';

class OpenPageBtn extends StatelessWidget {
  final label;
  final fun;
  const OpenPageBtn({Key? key, @required this.fun, @required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Text(
            label,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
        onPressed: fun,
      ),
    );
  }
}
