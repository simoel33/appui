import 'package:flutter/material.dart';

class LindeBotoomBar extends StatelessWidget {
  const LindeBotoomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        color: Color.fromARGB(31, 95, 96, 100),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(size: 30, Icons.gamepad, color: Colors.blue),
                      ]),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                            size: 30,
                            Icons.notification_important,
                            color: Colors.blue),
                            Text('1',style: TextStyle(color: Colors.red),),
                      ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
