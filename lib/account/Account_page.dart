import 'package:flutter/material.dart';
import 'package:savant_app/account/edit_profile.dart';
import 'package:savant_app/account/rating.dart';
import 'package:savant_app/account/settings.dart';
import 'package:savant_app/login.dart';
import 'package:settings_ui/settings_ui.dart';


class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool lockInBackground = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        automaticallyImplyLeading: false,
        title: 
        Container(
          child: Text('Account',
          style: TextStyle(
            color: Colors.white,
          ),),

          alignment: Alignment.topLeft,
        ),
      ),
      body: SettingsList(physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
        sections: [
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.account_circle_outlined),
                title: Text('Edit Profile'),
                onPressed: (context) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_profile()));

                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.language_outlined),
                title: Text('Language'),
                onPressed: (context) {
                  
                },
              ),

              SettingsTile.navigation(
                leading: Icon(Icons.location_on_outlined),
                title: Text('Manage Addresses'),
                onPressed: (context) {

                },
              ),

              SettingsTile.navigation(
                leading: Icon(Icons.settings_outlined),
                title: Text('Settings'),
                onPressed: (context) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Setting()));

                },
              ),

              SettingsTile.navigation(
                leading: Icon(Icons.thumb_up_alt_outlined),
                title: Text('Rate Savant'),
                onPressed: (context) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Rating()));

                },
              ),

              SettingsTile.navigation(
                leading: Icon(Icons.headset_mic_outlined),
                title: Text('Help Centre'),
                onPressed: (context) {

                },
              ),

              SettingsTile.navigation(
                leading: Icon(Icons.policy_outlined),
                title: Text('Legal and Policies'),
                onPressed: (context) {

                },
              ),

              SettingsTile.navigation(
                leading: Icon(Icons.logout_outlined),
                title: Text('Log Out'),
                onPressed: (context) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));

                },
              ),


            ],
          ),
        ],
      ),



      











    );



  }
}
