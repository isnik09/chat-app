import 'dart:convert';

MessageData messageDataFromJson(String str) =>
    MessageData.fromJson(json.decode(str));

String messageDataToJson(MessageData data) => json.encode(data.toJson());

class MessageData {
  MessageData({
    this.id,
    required this.sender,
    required this.text,
  });

  String? id;
  String sender;
  String text;

  factory MessageData.fromJson(Map<String, dynamic> json) => MessageData(
        id: json["id"],
        sender: json["sender"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sender": sender,
        "text": text,
      };
}
