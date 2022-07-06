import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConfirmationAlert extends StatelessWidget {
  const ConfirmationAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Confirmation !!'),
      content: Text('Voulez vous moddifier vos informations ?'),
      actions: [
        FlatButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
              // Navigator.pushNamed(context, '/profile');
            },
            child: Text('Non')),
        FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
              showDialog(
                  context: context,
                  builder: (context) {
                    return SuccessAlert();
                  });
              //Navigator.of(context).pop();
            },
            child: Text('Oui')),
      ],
    );
  }
}

class SuccessAlert extends StatelessWidget {
  const SuccessAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width / 1.5,
          child: Padding(
            padding: EdgeInsets.all(3),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: Icon(
                          Icons.thumb_up,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('vos informations est bien modifier'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'OK',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                ]),
          )),
    );
  }
}
