import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:uiapp/profile/componenets/edit_profile_patient.dart';
import 'package:uiapp/profile/patient_profile.dart';

import 'LindeBottomBar.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.blue[50],
        
      //   floatingActionButton: FloatingActionButton(
      //     child: Icon(size: 50, Icons.monitor_heart_outlined),
      //     onPressed: () {},
      //   ),
      //  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //  bottomNavigationBar: LindeBotoomBar(),
      body: HomePage(),
        
      ),
      routes: {
        '/homepage': (context)=> HomePage(),
        '/profile' : (context) =>  PatientProfile(),
        '/editprofile': (context) => EditPatientProfile(),
      },
      //initialRoute: '/',
    );
  }
}

class TestStagereed extends StatelessWidget {
  const TestStagereed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => new Container(
        width: 30,
          color: Colors.green,
          child: new Center(
            child: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Text('$index'),
            ),
          )),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 2 : 1),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
