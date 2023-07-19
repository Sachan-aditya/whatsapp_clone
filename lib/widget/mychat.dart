import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class Mymessage extends StatelessWidget {
  final String message;
  final String date;
  Mymessage({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: messageColor,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 30, 20),
                  child: Text(
                    message,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(children: [
                    Text(
                      date,
                      style: TextStyle(fontSize: 10, color: Colors.white60),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.red,
                    )
                  ]),
                )
              ],
            ),
          )),
    );
  }
}
