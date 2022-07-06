

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GenericCard extends StatelessWidget {
  const GenericCard({Key? key, required this.height , required this.width}) : super(key: key);
final double height;
final double width;
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
              onTap: () => print('yess'),
              child: Container(
                  height: height,
                  width: width,
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
            );
  }
}