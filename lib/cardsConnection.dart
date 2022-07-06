import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uiapp/netatmoCard.dart';
import 'package:uiapp/styles/colors/colors.dart';
import 'package:uiapp/styles/text/linde_text.dart';
import 'package:uiapp/withingsCard.dart';

class CardsConnection extends StatelessWidget {
  final bool netatmostatus;
  final bool withingsStatus;

  const CardsConnection(
      {Key? key, required this.netatmostatus, required this.withingsStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 2),
      child: Column(
        children: [
          if (netatmostatus == false && withingsStatus == false) ...[
            SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait ?MediaQuery.of(context).size.height / 7 :MediaQuery.of(context).size.height / 3 ,
              width: MediaQuery.of(context).size.width - 10,
              child: Expanded(
                child: Card(
                    color: lindeBlueGray1_70,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 30)),
                            Text('mon envirenement',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 18, 109, 184))),
                            Text('ma Sante',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 18, 109, 184))),
                          ],
                        ),
                        Expanded(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // netatmo
                                CircleAvatar(
                                  radius: MediaQuery.of(context).size.height / 30,
                                  backgroundColor: Colors.deepOrange,
                                ),
                                CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Color.fromARGB(255, 235, 24, 9),
                                ),
                                Text('Deconnecte',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 235, 24, 9))),
                                // Withings
                                CircleAvatar(
                                  radius:  MediaQuery.of(context).size.height / 30,
                                  backgroundColor: Colors.blue,
                                ),
                                CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Color.fromARGB(255, 235, 24, 9),
                                ),
                                Text(
                                  'Deconnecte',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 235, 24, 9)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            )
          ] else ...[
            NetatmoCard(status: netatmostatus),
            WithingsCard(
              status: withingsStatus,
            ),
          ]
    
          // ] else if (withingsStatus==true && netatmostatus == true) ...[
          //     NetatmoCard(status:true),
          //     WithingsCard(status: true,),
          // ] else if (withingsStatus==true && netatmostatus == false) ...[
          //   NetatmoCard(status:false),
          //   WithingsCard(status:true)
          // ] else if (withingsStatus==false && netatmostatus == true) ...[
          //   NetatmoCard(status:true),
          //   WithingsCard(status:false)
          // ]
        ],
      ),
    );
  }
}
