
import 'dart:ffi';

class Subscription {
  int id;
  int userId;
  int gymId;
  String createdAt;
  bool isValid;
  bool isPaid;
  double price;

  Subscription({
    required this.id,
    required this.userId,
    required this.gymId,
    required this.createdAt,
    required this.isValid,
    required this.isPaid,
    required this.price

  });

  factory Subscription.fromJson(Map<String, dynamic> jsonData){
    return Subscription(
        id: jsonData['id'],
        userId: jsonData['userId'],
        gymId: jsonData['gymId'],
        createdAt: jsonData['createdAt'],
        isValid: jsonData['isValid'],
        isPaid: jsonData['isPaid'],
        price: jsonData['price']
    );
  }
}