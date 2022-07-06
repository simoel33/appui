import 'package:flutter/material.dart';
import 'package:uiapp/styles/colors/colors.dart';

class WithingsCard extends StatelessWidget {
  const WithingsCard({Key? key, required this.status}) : super(key: key);
  final bool status;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width - 10,
      child: Card(
          color: lindeBlueGray1_70,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'ma Sante',
                      style:
                          TextStyle(color: Color.fromARGB(255, 18, 109, 184)),
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
                      child: Icon(Icons.local_pharmacy),
                      backgroundColor: Colors.blue,
                    ),
                  ],
                )
              ] else ...[
                if (status == false) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 22,
                        backgroundColor: Colors.blue,
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Color.fromARGB(255, 235, 24, 9),
                      ),
                      Text(
                        'Deconnecte',
                        style:
                            TextStyle(color: Color.fromARGB(255, 235, 24, 9)),
                      ),
                    ],
                  )
                ]
              ]
            ],
          )),
    );
  }
}
