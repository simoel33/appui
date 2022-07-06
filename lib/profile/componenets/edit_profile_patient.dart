
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uiapp/profile/componenets/profile_card.dart';

import 'edit_information_profile.dart';

class EditPatientProfile extends StatelessWidget {
  const EditPatientProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
        body: Column(
      children: [
        // top container with profile picture
        ProfileCard(),
        EditPersonalInformations(),
        
      ],
    ));
    
  }
}