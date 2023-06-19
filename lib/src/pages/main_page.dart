import 'package:flutter/material.dart';
import 'package:spotter/src/pages/login_page.dart';
import 'package:spotter/src/pages/subscription_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
        child: Container(
          child: Table(
            children: [
              TableRow(
                children: [
                  //Subscriptions
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SubscriptionPage())
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                          color: Color.fromARGB(64, 83, 83, 83),
                          borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Icon(Icons.subscriptions, color: Colors.green,),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text('Inscrições'),
                              )
                            ],
                          ),
                        )
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SubscriptionPage())
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(64, 83, 83, 83),
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Icon(Icons.person, color: Colors.green,),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Text('Perfil'),
                                )
                              ],
                            ),
                          )
                      ),
                    ),
                  )
                ]
              )
            ],
          ),
        ),
      )
    );
  }
}
