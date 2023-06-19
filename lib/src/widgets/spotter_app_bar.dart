import 'package:flutter/material.dart';
import 'package:spotter/src/pages/login_page.dart';

class SpotterAppBar extends StatelessWidget {
  const SpotterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Spotter'),
      centerTitle: true,
      actions: [
        //Sign out
        IconButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginPage())
              );
            },
            icon: Icon(Icons.logout)
        )
      ],
    );
  }
}
