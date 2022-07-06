import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PatientInformations extends StatelessWidget {
  const PatientInformations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Johne Doe',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  ),
                  
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/editprofile'),
                    child: Container(
                      height: 25,
                      width: 90,
                      child: Center(child: Text('Modifier', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ),
                  // FlatButton(
                  //   height: 30,
                  //   minWidth: 50,
                  //   color: Colors.blue,
                  //   textColor: Colors.white, // foreground
                  //   onPressed: () {},
                  //   child: Text('Modifier'),
                  // ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Johne.doe@email.com',
                    style: TextStyle(fontSize: 10, color: Colors.blue),
                  ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
        // cards of info
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 25, right: 25),
          child: Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 187, 216, 240).withOpacity(0.5),
                  spreadRadius: 4.1,
                  blurRadius: 3.1,
                  offset: Offset(1, 3),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // ListTile(
                    //   title: Text('Jhone.doe@email.com',style: TextStyle(fontSize: 12), ),
                    //   trailing: Icon(Icons.arrow_forward_ios),
                    //   leading: Icon(Icons.email),
                    // ),
                    // ListTile(
                    //   title: Text('+33 6 89 25 67 24',style: TextStyle(fontSize: 12), ),
                    //   trailing: Icon(Icons.arrow_forward_ios),
                    //   leading: Icon(Icons.phone_android_rounded),
                    // ),
                    // ListTile(
                    //   title: Text('Home Name',style: TextStyle(fontSize: 12), ),
                    //   trailing: Icon(Icons.arrow_forward_ios),
                    //   leading: Icon(Icons.house_siding),
                    // ),
                    Row(
                      children: [
                        // ListTile(),
                        Icon(Icons.email),
                        Text('\t\t\tEmail : Jhone.doe@email.com'),
                        Text('\n'),
                      ],
                    ),
                    Row(
                      children: [
                        // ListTile(),
                        Icon(Icons.phone_android_rounded),
                        Text('\t\t\t Mobile : +33 6 89 45 34 23'),
                        Text('\n'),
                      ],
                    ),
                    Row(
                      children: [
                        // ListTile(),
                        Icon(Icons.house_siding),
                        Text('\t\t\t Maison : Maison Name'),
                        Text('\n'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
