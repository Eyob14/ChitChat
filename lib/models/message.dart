class Message {
  final String text;
  final DateTime date;
  final bool isMe;

  const Message({
    required this.text,
    required this.date,
    required this.isMe,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      text: json['message'],
      date: DateTime.parse(json['date']),
      isMe: json['isMe'],
    );
  }

  Map<String, dynamic> toJson() => {
        'message': text,
        'date': date.toIso8601String(),
        'isMe': isMe,
      };
}
