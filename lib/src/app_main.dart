import 'package:flutter/material.dart';
import 'package:spotter/src/pages/main_page.dart';
import 'package:provider/provider.dart';
import 'package:spotter/src/services/subscription_service.dart';

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SubscriptionService())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Spotter',
        home: const MainPage(),
        theme: ThemeData(
            primarySwatch: Colors.green
        ),
      ),
    );
  }
}
