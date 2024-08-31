import 'dart:isolate';

import 'package:quick_cart/common/assigns.dart';
import 'package:quick_cart/model/entity.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// This used to get data from server...!

class NotificationService {
  Future<List<NotificationModel>> fetchNotifications() async {
    try {
      final response = await http.get(Uri.parse(Assigns.endPoint));

      switch (response.statusCode) {
        case 200:
          print('All notifications are fetched successfully.');
          return await parseNotificationsInIsolate(response.body);

        case 400:
          print(
              'Bad request: The request was invalid or cannot be otherwise served.');
          return [];

        case 401:
          print(
              'Unauthorized: Authentication credentials were missing or incorrect.');
          return [];

        case 403:
          print(
              'Forbidden: The request is understood, but it has been refused or access is not allowed.');
          return [];

        case 404:
          print('Not Found: The requested resource could not be found.');
          return [];

        case 500:
          print('Internal Server Error: An error occurred on the server side.');
          return [];

        case 503:
          print(
              'Service Unavailable: The server is currently unavailable (overloaded or down).');
          return [];

        default:
          print('Unhandled status code: ${response.statusCode}');
          return [];
      }
    } catch (e) {
      print('An error occurred while fetching notifications: $e');
      return [];
    }
  }
}

// This used to run data in an isolate...!

Future<List<NotificationModel>> parseNotificationsInIsolate(
    String jsonString) async {
  return await Isolate.run(() {
    final jsonResponse = jsonDecode(jsonString);
    final data = jsonResponse['data'] as List;
    return data.map((value) => NotificationModel.formjson(value)).toList();
  });
}
