

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return  Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)),
          ),
          height: MediaQuery.of(context).size.height / 3,
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      )),
                  Text(
                    'Profile',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              // Profile Picture
              Center(child: CircleAvatar(backgroundColor: Colors.white,radius: 30,child: Icon(Icons.person, size: 40)),),
              Center(child: Text('Jhone Doe',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),),
              Center(child: Text('jhone.doe@email.com',style: TextStyle(fontSize: 14, color: Colors.white)),),
            ]),
          ),
        );
  }
}