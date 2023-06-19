import 'package:flutter/material.dart';
import 'package:spotter/src/pages/login_page.dart';
import 'package:spotter/src/widgets/spotter_app_bar.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {

    var subscriptionList = [1, 2, 3];

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
      body: subscriptionList.isEmpty ?
      const Text('Nenhuma inscrição realizada') :
      ListView.builder(
        shrinkWrap: true,
        itemCount: subscriptionList.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('[Academia]'),
            subtitle: Text('[Valor]'),
            trailing: GestureDetector(
              child: Icon(Icons.cancel),
              onTap: (){
                subscriptionList.remove(subscriptionList[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
