import 'package:flutter/material.dart';

class NetatmoCard extends StatelessWidget {
  const NetatmoCard({Key? key, required this.status}) : super(key: key);
  final bool status;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width - 10,
      child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'mon envirenement',
                      style: TextStyle(color: Color.fromARGB(255, 18, 109, 184)),
                    ),
                  ),
                ],
              ),
              if (status == true) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // netatmo
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height / 22,
                      child: Icon(Icons.connect_without_contact),
                      backgroundColor: Colors.green,
                    ),
                  ],
                )
              ] else if (status == false) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepOrange,
                    ),
                    CircleAvatar(
                      radius: 9,
                      backgroundColor: Color.fromARGB(255, 235, 24, 9),
                    ),
                    Text('Deconnecte',
                        style:
                            TextStyle(color: Color.fromARGB(255, 235, 24, 9))),
                  ],
                ),
              ]
            ],
          )),
    );
  }
}
