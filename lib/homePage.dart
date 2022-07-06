import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiapp/cardsConnection.dart';
import 'package:uiapp/fixedTopContainer.dart';
import 'package:uiapp/main.dart';

import 'generique_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              FixedTopContainer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < 10; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                GenericCard(
                                  height: i % 2 == 0 ? 110 : 80,
                                  width: i % 2 == 0 ? 90 : 120,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                GenericCard(
                                  height: i % 2 == 0 ? 90 : 120,
                                  width: i % 2 == 0 ? 110 : 80,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              //  CardsConnection(
              //     netatmostatus: true,
              //     withingsStatus: true,
              //   ),
              // Expanded(
              //    child: TestStagereed(),
              //   // ListView(
              //   //   shrinkWrap: true,
              //   //   children: [
              //   //  // TestStagereed(),
              //   //  Text('dkdkdkd'),
              //   // ]),
              // ),
              //
            ],
          ),
        ],
      ),
    );
  }
}
