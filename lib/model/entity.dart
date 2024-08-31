// This is model for fetch notification data from server...!

class NotificationModel {
  final String title;
  final String image;
  final String subTitle;
  final DateTime timeStamp;

  NotificationModel(
      {required this.title,
      required this.image,
      required this.subTitle,
      required this.timeStamp});
  factory NotificationModel.formjson(Map<String, dynamic> json) {
    return NotificationModel(
      title: json['title'] ?? '',
      image: json['image'] ?? '',
      subTitle: json['body'] ?? '',
      timeStamp: DateTime.parse(json['timestamp'] ?? ''),
    );
  }
}
