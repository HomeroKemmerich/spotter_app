import 'package:flutter/cupertino.dart';
import 'package:spotter/src/models/subscription_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

enum SubscriptionState { idle, success, error, loading }

class SubscriptionService extends ChangeNotifier {

  SubscriptionState state = SubscriptionState.idle;

  Subscription subscription = Subscription(
      isPaid: false,
    createdAt: '',
    gymId: 0,
    id: 0,
    isValid: false,
    price: 0,
    userId: 0,
  );

  final List<Subscription> subscriptions = [];

  Future<void> getAllSubscriptions() async{
    try{
      state = SubscriptionState.loading;


      notifyListeners();

      String baseUrl = 'http://localhost:8080';
      String responseFormat = 'json';

      Uri cepUri = Uri.parse('$baseUrl/subscriptions');

      //Final define o tipo de acordo com a atribuição
      final response = await http.get(cepUri);

      if(response.statusCode >= 400){
        state = SubscriptionState.error;
      }

      var fullAddress = jsonDecode(response.body);

      subscription = Subscription.fromJson(fullAddress);

      subscriptions.add(subscription);

      state = SubscriptionState.success;

      notifyListeners();
    } catch (_) {
      state = SubscriptionState.error;
      notifyListeners();
    }
  }
}
