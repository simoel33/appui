import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uiapp/profile/componenets/patient_informations.dart';

import 'componenets/patient_operations.dart';
import 'componenets/profile_card.dart';

class PatientProfile extends StatelessWidget {
  const PatientProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
        body: Column(
      children: [
        // top container with profile picture
        ProfileCard(),
        // Container of personal Informations
        PatientInformations(),
        // cards of operations like pressure, Traitements , devices
        PatientOperations(),

      ],
    ));
  }
}
