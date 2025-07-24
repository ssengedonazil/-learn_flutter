import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Pages/well_come.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
       children: [
        ListTile(title: Text("Log out"),onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)  {
                  return WellComePage();
                }));
        },),
        
       ],
         ),
    );
  }
}
