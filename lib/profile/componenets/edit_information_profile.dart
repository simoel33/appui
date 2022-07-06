import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uiapp/profile/componenets/costum_Alert.dart';

class EditPersonalInformations extends StatelessWidget {
  const EditPersonalInformations({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        // cards of info
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 25, right: 25),
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
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
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.person),
                        Text('Nom'),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 6),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.person),
                        Text('Prenom'),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 6),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.email),
                        Text('Email'),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 6),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.house_siding),
                        Text('Maison'),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 6),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  
                  
                  GestureDetector(
                    onTap: () {
                     showDialog(context: context, builder: (context){
                       return ConfirmationAlert();
                     });
                    },
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text('Modifier', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ),
                  ]
                  ,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
