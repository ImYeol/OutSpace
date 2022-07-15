class Message {
  final String id;
  final String message;
  final DateTime timestamp;

  const Message(
      {required this.id, required this.message, required this.timestamp});

  String getId() => id;
  String getMessage() => message;
  DateTime getTimeStamp() => timestamp;
}

List messages = [
  Message(
      id: "hanbit",
      message: "안녕하세요",
      timestamp: DateTime(2022, 15, 7, 15, 30, 20)),
  Message(
      id: "yeol",
      message: "언제 가능할까요?",
      timestamp: DateTime(2022, 15, 7, 15, 32, 20)),
  Message(
      id: "hanbit",
      message: "아무때나요",
      timestamp: DateTime(2022, 15, 7, 15, 33, 20)),
  Message(
      id: "yeol", message: "좋아요", timestamp: DateTime(2022, 15, 7, 16, 33, 20)),
];
