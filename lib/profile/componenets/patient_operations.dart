import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientOperations extends StatelessWidget {
  const PatientOperations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => print('yess'),
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 187, 216, 240).withOpacity(0.5),
                        spreadRadius: 4.1,
                        blurRadius: 3.1,
                        offset: Offset(1, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Traitements',
                          style: TextStyle(fontSize: 12),
                        ),
                        Icon(
                          Icons.settings,
                          size: 30,
                        )
                      ],
                    ),
                  )),
            ),
            GestureDetector(
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 4,
                  //color: Colors.blue[50],
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 187, 216, 240).withOpacity(0.5),
                        spreadRadius: 4.1,
                        blurRadius: 3.1,
                        offset: Offset(1, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pressure',
                          style: TextStyle(fontSize: 12),
                        ),
                        Icon(
                          Icons.health_and_safety,
                          size: 30,
                        )
                      ],
                    ),
                  )),
            ),
            GestureDetector(
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 187, 216, 240).withOpacity(0.5),
                        spreadRadius: 4.1,
                        blurRadius: 3.1,
                        offset: Offset(1, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sensors',
                          style: TextStyle(fontSize: 12),
                        ),
                        Icon(Icons.tablet_android_outlined)
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
