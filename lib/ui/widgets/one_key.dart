import 'package:flutter/material.dart';

class OneKey extends StatelessWidget {
  const OneKey({Key? key, required this.number, required this.callback})
      : super(key: key);

  final int number;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    // TODO.
    // te le mides a mejorar este key??
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Material(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
          elevation: 18.0,
          clipBehavior: Clip.antiAlias,
          child: MaterialButton(
              key: Key(number.toString()),
              color: Color.fromARGB(255, 10, 102, 19),
              elevation: 5,
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              onPressed: () {
                callback(number);
              },
              child: Text(number.toString(),
                  style: const TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                  ))),
        ),
      ),
    );
  }
}
