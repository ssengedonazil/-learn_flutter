import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Pages/well_come.dart';
import 'package:learn_flutter/data/notifiers.dart';

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
          CircleAvatar(
  radius: 50.0,
  backgroundImage: AssetImage('assets/images/logo.png'),
)
,
          ListTile(
            title: Text("Log out"),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WellComePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
